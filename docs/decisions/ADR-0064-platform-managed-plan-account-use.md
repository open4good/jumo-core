---
title: ADR-0064 — platform-managed use of a plan-direct subscription account
status: accepted
normative: true
audience: PROJECT_SCOPED
decisions: [2]
---

# ADR-0064 — platform-managed use of a plan-direct subscription account

## Decision

A `ProviderAccount` whose routing mode is `PLAN_DIRECT` may be used under `JUMO_MANAGED` account
use when its own entitlement declares that context `PERMITTED`. Permission is declared per account,
never per class: the four CLI subscription accounts are governed by four different sets of terms,
and a single uniform edit across them would assert something no single source supports.

The router stops testing `jumoManaged` unconditionally. It resolves the `WorkerSubstrate` that
declares the candidate account in `providerAccountRef`, reads that substrate's required
`accountUse`, and evaluates the matching entitlement context — `jumoManaged` for `JUMO_MANAGED`,
`holderOperated` for `HOLDER_OPERATED`. A verdict other than `PERMITTED`, a terms review whose
`validUntil` has passed, an account no substrate claims, and an account two substrates claim with
conflicting `accountUse` are all refusals. Fail closed: an account whose use context cannot be
established is not routed.

## Relationship to ADR-0012

This amends ADR-0012, it does not replace it. A new document because `adr_lines_max` is measured per
document and the longest ADR already sits on the ceiling.

ADR-0012 states that a CLI substrate's account use is `HOLDER_OPERATED` against a `ProviderAccount`
whose entitlement permits holder operation, and that a plan substrate cannot borrow a
gateway-routed account. What remains true: the second half, entirely — a plan substrate still
cannot borrow a gateway-routed account, and the isolation, per-dispatch selection and secret
handling ADR-0012 sets out are untouched. What this ADR amends: `HOLDER_OPERATED` stops being the
only admissible account use for a plan substrate. It remains the default, and the declared value
governs.

## Why this is written down rather than coded silently

Driving a subscription account automatically is precisely to stop being holder-operated. Leaving
the code at odds with an accepted normative ADR would make the contradiction unreadable, and a
later reader must be able to reverse this decision without rediscovering why it was taken.

## The clause that argues against this decision

The Anthropic Consumer Terms, effective 2025-10-08, list among the ways a user may not access the
Services:

> Except when you are accessing our Services via an Anthropic API Key or where we otherwise
> explicitly permit it, to access the Services through automated or non-human means, whether
> through a bot, script, or otherwise.

Source: https://www.anthropic.com/legal/consumer-terms — reviewed 2026-09-13.

This is the strongest argument against the decision. The owner was asked twice on 2026-09-13, once
before the terms research and once after with this clause quoted, and maintained the ruling. The
ruling is therefore taken with this clause in view, and `anthropic-cli` is knowingly declared
against its provider's stated terms rather than by oversight.

## Findings that postdate the ruling

The ruling above was taken with the Anthropic clause quoted. The three findings below surfaced
afterwards, during the per-account review this ADR records, and were not in view when it was taken.

- **openai-codex-cli — supported, with a caveat.** OpenAI documents keeping a ChatGPT-managed Codex
  session working on a trusted CI/CD runner, calling it "an advanced workflow for enterprise and
  other trusted private automation" while stating that "API keys are still the recommended option
  for most CI/CD jobs". Supported, not encouraged.
  Source: https://developers.openai.com/codex/auth/ci-cd-auth — reviewed 2026-09-13.
- **google-gemini-cli — adverse, not silent.** The prior review recorded Google as neither
  forbidding nor permitting this. That is wrong. The first-party documentation states that
  "Directly accessing the services powering Gemini CLI (for example, the Gemini Code Assist
  service) using third-party software, tools, or services [...] is a violation of applicable terms
  and policies." A distinction the owner should weigh rather than have resolved here: the clause
  names third-party software reaching the backing service, and driving the official `gemini` binary
  is arguably not that. So the ruling stands against two providers' adverse clauses, not one.
  Source: https://github.com/google-gemini/gemini-cli/blob/main/docs/resources/tos-privacy.md —
  reviewed 2026-09-13.
- **github-copilot-cli — its quota is observable.** The claim that no documented API exposes the
  premium-request quota is wrong: the Copilot SDK's `account.getQuota` reports the authenticated
  user's remaining entitlement, keyed by quota type including `premium_interactions`. Whether this
  account joins the chain is left open here and its entitlement is unchanged.
  Source: https://docs.github.com/en/copilot/how-tos/copilot-sdk/features/usage-and-billing —
  reviewed 2026-09-13.
