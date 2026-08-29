---
title: ADR-0062 — Portable theme contract
status: accepted
normative: true
audience: PROJECT_SCOPED
decisions: [1, 2, 14, 15]
---

# ADR-0062 — Portable theme contract

## Decision

`ThemePack` additively gains `localizations` (locale plus a versioned JSON message overlay),
`designTokens` (light/dark Vuetify token assets, optional font manifest), `creativeRights`
(informative origin/author/source/license) and, on `visualization`/`presence`/`rooms`,
`defaultRoomId`, `livingBitmapManifest` and `sceneManifest`. Every asset reference is a
`VersionedJsonAsset`: a `schemaVersion` (`major.minor`) and an `asset` path bounded to
`.jumo/assets/**.json` -- no path segment may contain a `.`, so `..` traversal is excluded by
construction. No field carries capability, policy or authority; a transport is still declared only by
an instance (ADR-0043/ADR-0045).

`Preferences.theme` (untyped string, `ifabsent: default`) is replaced by `Preferences.themePackRef`, a
typed optional `ContractReference`. `InterfaceSurface` gains `defaultThemePackRef` -- optional in
LinkML, but required by `corpus.interface.default-theme-pack-required` in Rego, so an older schema
loading a document that already carries the field does not hard-fail deserialization while the corpus
still refuses an `InterfaceSurface` that omits it. `JumoKitSpec.assetExports` and `RenderedKitAsset`'s
path patterns gain `woff2`.

`references.rego`'s generic machinery covers a malformed or unresolved `themePackRef`/
`defaultThemePackRef`; `corpus.reference.same-realm` is a no-op for both, since `ThemePack` is
`OVERRIDABLE` like `VocabularySet` and declares no `ownerRealm`. `governance.rego` adds what that
machinery cannot express: a bounded asset path (`corpus.theme.asset-path`), a pinned schema major
(`corpus.theme.schema-version`, `1` here), `defaultRoomId` naming a declared room
(`corpus.theme.default-room`) and unique `localizations[].locale` values.

This lot publishes only vocabulary and policy: no listener, runtime consumer, Vue component or
concrete theme instance exists yet. `portable-theme-runtime-and-preference` and
`living-bitmap-scene-engine` start only from this lot's exact published jumo-core revision.

## Alternatives

- **`defaultThemePackRef` required in LinkML**: rejected -- an older generated schema does not
  recognize the new property regardless of its own required-ness, so this turns loading any current
  corpus into a hard refusal until every consumer repins. Optional-in-LinkML plus required-in-Rego
  gives the same guarantee against a *current* corpus without that failure mode.
- **Validating the referenced JSON asset's own bytes in Rego**: rejected -- no runtime consumer or
  concrete theme exists yet to produce bytes; `RenderedKitAsset` already carries the provenance a
  future kit-rendering consumer needs.
- **A freeform path string per asset site, no shared wrapper**: rejected -- every site needs the
  identical schema-major pin; one reusable value object beats five near-duplicate ones.

## Consequences

- LinkML adds `ThemeLocalization`, `ThemeDesignTokens`, `ThemeCreativeRights`, `VersionedJsonAsset`,
  and fields on `ThemePackSpec`, `ThemeVisualization`, `ThemePresence`, `ThemeRoom`, `PreferencesSpec`,
  `InterfaceSurfaceSpec` (`interface.yaml`, `organization.yaml`, `portability.yaml`).
- `governance.rego`/`references.rego` add the five rules and two typed-reference declarations above;
  `.jumo/interfaces/web.yml` migrates to declare `defaultThemePackRef` (`dev.jumo.core/default`).
- Out of scope, left to later lots: no listener, resolution endpoint, Vue activation or concrete
  theme exists yet. A theme never creates a grant, an owner approval or a connector activation itself.
