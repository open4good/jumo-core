import { createHash, createHmac } from 'node:crypto'

export type WifiConfig = { enabled: boolean }
export type EffectProposal = { current: WifiConfig, requested: WifiConfig, payloadDigest: string, idempotencyKey: string }
export type AssociationStatus = 'PENDING' | 'GRANTED' | 'DENIED' | 'EXPIRED'
export type FreeboxSession = { token: string }

/** The app token is pairing material, not a session token. It remains in the machine's OpenBao lease. */
export class FreeboxWifiAdapter {
  private readonly baseUrl: string
  private readonly appToken: string
  private readonly fetcher: typeof fetch

  constructor(baseUrl: string, appToken: string, fetcher: typeof fetch = fetch) {
    this.baseUrl = baseUrl.replace(/\/$/, '')
    this.appToken = appToken
    this.fetcher = fetcher
  }

  async discover(): Promise<{ apiVersion: string }> {
    const response = await this.fetcher(`${this.baseUrl}/api_version`)
    if (!response.ok) throw new Error(`Freebox discovery failed (${response.status})`)
    const body = await response.json() as { api_version?: string }
    if (!body.api_version) throw new Error('Freebox returned an invalid discovery response')
    return { apiVersion: body.api_version }
  }

  async requestAssociation(appId: string, appName: string, appVersion: string, deviceName: string): Promise<{ trackId: number }> {
    const response = await this.fetcher(`${this.baseUrl}/api/v8/login/authorize/`, {
      method: 'POST', headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ app_id: appId, app_name: appName, app_version: appVersion, device_name: deviceName })
    })
    if (!response.ok) throw new Error(`Freebox association request failed (${response.status})`)
    const body = await response.json() as { success?: boolean, result?: { track_id?: number } }
    if (!body.success || !Number.isInteger(body.result?.track_id)) throw new Error('Freebox rejected the association request')
    return { trackId: body.result.track_id }
  }

  async associationStatus(trackId: number): Promise<AssociationStatus> {
    const response = await this.fetcher(`${this.baseUrl}/api/v8/login/authorize/${trackId}`)
    if (!response.ok) throw new Error(`Freebox association status failed (${response.status})`)
    const body = await response.json() as { success?: boolean, result?: { status?: string } }
    const status = body.result?.status?.toUpperCase()
    if (!body.success || !status || !['PENDING', 'GRANTED', 'DENIED', 'EXPIRED'].includes(status)) throw new Error('Freebox returned an invalid association status')
    return status as AssociationStatus
  }

  async openSession(): Promise<FreeboxSession> {
    const challengeResponse = await this.fetcher(`${this.baseUrl}/api/v8/login/`)
    if (!challengeResponse.ok) throw new Error(`Freebox login challenge failed (${challengeResponse.status})`)
    const challengeBody = await challengeResponse.json() as { success?: boolean, result?: { challenge?: string } }
    const challenge = challengeBody.result?.challenge
    if (!challengeBody.success || !challenge) throw new Error('Freebox returned an invalid login challenge')
    const password = createHmac('sha1', this.appToken).update(challenge).digest('hex')
    const response = await this.fetcher(`${this.baseUrl}/api/v8/login/session/`, {
      method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify({ app_id: 'jumo', password })
    })
    if (!response.ok) throw new Error(`Freebox session creation failed (${response.status})`)
    const body = await response.json() as { success?: boolean, result?: { session_token?: string } }
    if (!body.success || !body.result?.session_token) throw new Error('Freebox rejected the challenge response')
    return { token: body.result.session_token }
  }

  async closeSession(session: FreeboxSession): Promise<void> {
    const response = await this.fetcher(`${this.baseUrl}/api/v8/login/`, { method: 'POST', headers: this.sessionHeaders(session), body: JSON.stringify({ logout: true }) })
    if (!response.ok) throw new Error(`Freebox session closure failed (${response.status})`)
  }

  async read(session: FreeboxSession): Promise<WifiConfig> {
    const response = await this.fetcher(`${this.baseUrl}/api/v2/wifi/config/`, { headers: this.sessionHeaders(session) })
    if (!response.ok) throw new Error(`Freebox Wi-Fi read failed (${response.status})`)
    const body = await response.json() as { success?: boolean, result?: WifiConfig }
    if (!body.success || !body.result || typeof body.result.enabled !== 'boolean') throw new Error('Freebox returned an invalid Wi-Fi state')
    return { enabled: body.result.enabled }
  }

  propose(current: WifiConfig, requested: WifiConfig): EffectProposal {
    const payload = JSON.stringify({ enabled: requested.enabled })
    const payloadDigest = `sha256:${createHash('sha256').update(payload).digest('hex')}`
    return { current, requested, payloadDigest, idempotencyKey: payloadDigest }
  }

  async apply(session: FreeboxSession, proposal: EffectProposal, freshOwnerConfirmation: string): Promise<WifiConfig> {
    if (!freshOwnerConfirmation) throw new Error('A fresh owner confirmation is required')
    const response = await this.fetcher(`${this.baseUrl}/api/v2/wifi/config/`, {
      method: 'PUT', headers: { ...this.sessionHeaders(session), 'Content-Type': 'application/json', 'Idempotency-Key': proposal.idempotencyKey },
      body: JSON.stringify({ enabled: proposal.requested.enabled })
    })
    if (!response.ok) throw new Error(`Freebox Wi-Fi update failed (${response.status})`)
    const observed = await this.read(session)
    if (observed.enabled !== proposal.requested.enabled) throw new Error('Freebox read-after-write did not match the approved payload')
    return observed
  }

  async rewriteObservedState(freshOwnerConfirmation: string): Promise<WifiConfig> {
    const session = await this.openSession()
    try {
      const current = await this.read(session)
      return await this.apply(session, this.propose(current, current), freshOwnerConfirmation)
    } finally {
      await this.closeSession(session)
    }
  }

  private sessionHeaders(session: FreeboxSession): Record<string, string> {
    if (!session?.token) throw new Error('A short Freebox session is required')
    return { 'X-Fbx-App-Auth': session.token }
  }
}
