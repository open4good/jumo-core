import test from 'node:test'
import assert from 'node:assert/strict'
import { FreeboxWifiAdapter } from '../src/index.ts'

test('proposal has a stable digest and apply verifies the observed state', async () => {
  let enabled = true
  const fetcher = async (url, init = {}) => {
    if (url.endsWith('/login/')) return new Response(JSON.stringify({ success: true, result: { challenge: 'challenge' } }), { status: 200 })
    if (url.endsWith('/login/session/')) return new Response(JSON.stringify({ success: true, result: { session_token: 'short-session' } }), { status: 200 })
    if (init.method === 'PUT') enabled = JSON.parse(init.body).enabled
    return new Response(JSON.stringify({ success: true, result: { enabled } }), { status: 200 })
  }
  const adapter = new FreeboxWifiAdapter('http://freebox.local', 'not-a-real-token', fetcher)
  const session = await adapter.openSession()
  const proposal = adapter.propose(await adapter.read(session), { enabled: false })
  assert.match(proposal.payloadDigest, /^sha256:[0-9a-f]{64}$/)
  assert.equal((await adapter.apply(session, proposal, 'fresh-owner-confirmation')).enabled, false)
})
