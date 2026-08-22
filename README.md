---
title: Jumo Core contract corpus
normative: false
audience: PUBLISHED_SUMMARY
---

# Jumo Core

`jumo-core` is Jumo's public Platform contract corpus (L0). It is declarative and
non-executable: it contains no application runtime, deployment automation, credentials,
secrets, private Realm data, or copy of the Jumo metamodel.

Jumo composes contract sources in this fixed order:

```text
Platform < Kit < Organization < Realm
```

This repository supplies Platform contracts in the `dev.jumo.core` and
`dev.jumo.connectors` namespaces. The Jumo application supplies the generated LinkML schema
used to validate every source; consumers must not treat this repository as a schema fork.

## Adoption

An application adopts this corpus only by recording a full 40-character Git commit SHA in its
versioned source lock. Runtime processes load the packaged, read-only source at that SHA; they
do not clone repositories, follow branches, use submodules, or fall back to a monorepo checkout.

## Layout

- `agents/`, `roles/`, `capabilities/`, `policies/`, `principles/`, and `practices/`: shared
  governance vocabulary and roles.
- `journeys/`, `projections/`, `prompts/`, `processes/`, and `interfaces/`: reusable interaction
  and process declarations.
- `worker-requirements/`, `themes/`, `budgets/`, `profiles/`, and `project.yml`: platform defaults.
- `connectors/github-read-only.yml`, `appraisals/`, `bundles/`, and `connector-packages/`: reusable,
  non-writing connector contracts.

The writing GitHub connector and all `WorkerSubstrate` contracts are Realm-owned and therefore
belong to the private Home corpus, not here.

## Contributing

Make a focused pull request with its WorkOrder, role, contract revision, deterministic
validation evidence, and the required Jumo commit trailers. Do not add secrets or Realm bindings.
Any consuming repository adopts an accepted change in a separate explicit lock-update pull request.
