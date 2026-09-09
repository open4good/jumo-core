---
title: ADR-0062 — Portable theme contract
status: accepted
normative: true
audience: PROJECT_SCOPED
decisions: [1, 2, 14, 15]
---

# ADR-0062 — Portable theme contract

## Decision

`ThemePack` has two supported wire formats during migration. Legacy v1 keeps its bounded
`.jumo/assets/**.json` references. Portable v2 is an autonomous directory at
`.jumo/themes/<metadata.id>/theme-pack.yml`; every `VersionedJsonAsset.asset` is relative to that
directory and is resolved against the exact contract source that declared the pack. Its path grammar
permits JSON, PNG, WebP and WOFF2 only after a declared JSON manifest hop. It admits neither absolute
paths nor dotted path segments, so traversal and cross-pack lookup are excluded by construction.

V2 adds `formatVersion`, `localizedNames`, `manifests` (`shell`, `components`, `motion`,
`illustrations`), `rightsManifest`, `integrityManifest`, day/night scene manifests, stable
`surfaceIds` on rooms, and bounded `hotspots`. A hotspot names only a previously declared
`InterfaceSurface` surface id, an i18n key and a platform-defined zone. It cannot carry a route,
action, URL, coordinate, handler or arbitrary layout. The platform alone maps a surface id to its
route and behavior.

All executable or active content is forbidden: CSS, JavaScript, HTML, audio, external media URLs
and arbitrary actions never enter a pack. Styling remains token data and allowlisted component,
shell, motion and responsive-layout recipes interpreted by the platform. Motion recipes are bounded
to `transform` and `opacity`, pause outside the visible page, and freeze under reduced-motion.

`Preferences.theme` (untyped string, `ifabsent: default`) was replaced in v1 by
`Preferences.themePackRef`, a typed optional `ContractReference`. `InterfaceSurface` carries
`defaultThemePackRef`, required by Rego; kit asset paths include WOFF2. `references.rego`'s generic
machinery covers a malformed or unresolved `themePackRef`/
`defaultThemePackRef`; `corpus.reference.same-realm` is a no-op for both, since `ThemePack` is
`OVERRIDABLE` like `VocabularySet` and declares no `ownerRealm`. `governance.rego` adds what that
machinery cannot express: a bounded asset path (`corpus.theme.asset-path`), a pinned schema major
(`corpus.theme.schema-version`, `1` or `2` during migration), the canonical v2 directory, required
manifests, `defaultRoomId` naming a declared room, unique localized-name/message locales, and room
or hotspot surface references that resolve in `InterfaceSurface`.

The authenticated runtime may expose the legacy JSON Projection endpoint and a raw binary endpoint
for images and fonts. Both first prove declaration, source confinement and SHA-256 integrity. Raw
responses declare an exact MIME type, ETag and private immutable cache policy. Integrity covers each
served asset; the integrity manifest excludes itself, while the rights registry records source,
author, licence, source URL, transformation and digest for every other file.

## Alternatives

- **`defaultThemePackRef` required in LinkML**: rejected -- an older generated schema does not
  recognize the new property regardless of its own required-ness, so this turns loading any current
  corpus into a hard refusal until every consumer repins. Optional-in-LinkML plus required-in-Rego
  gives the same guarantee against a *current* corpus without that failure mode.
- **Validating asset bytes in Rego**: rejected -- Rego validates the contract graph and bounded
  references; the source-aware runtime validates manifest recipes and SHA-256 bytes before serving.
- **Allowing packs to provide components or CSS**: rejected -- it would move DOM, route ownership
  and executable behavior across the policy boundary. Platform primitives plus recipes retain the
  visual range without transferring authority.
- **A freeform path string per asset site, no shared wrapper**: rejected -- every site needs the
  identical schema-major pin; one reusable value object beats five near-duplicate ones.

## Consequences

- LinkML adds the portable manifest, localized name and hotspot value objects without introducing a
  second contract kind.
- The default pack migrates with Nestor so fallback and public surfaces exercise the identical
  extension points; its presentation remains classic.
- A theme never creates a grant, owner approval, route, connector activation or other capability.
- Audio remains excluded from ThemePack v2.
