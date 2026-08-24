---
search:
  boost: 5.0
---

# Slot: assetExports


_Optional binary assets (images) and i18n bundles (json) the kit distributes, distinct from `exports` because these are opaque content, not corpus-governed YAML documents -- no LinkML class validates their bytes, only their provenance (KitLockSpec.renderedAssets digest). Images and i18n bundles share this one tree rather than splitting into two export lists: both are inert content a journey (AssistedJourneyStep.image/heroImage) or the frontend i18n loader references by rendered path, never executed._



<div data-search-exclude markdown="1">



URI: [jumo:assetExports](https://jumo.dev/schemas/jumo-v1/assetExports)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [JumoKitSpec](JumoKitSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [JumoKitSpec](JumoKitSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [JumoKitSpec](JumoKitSpec.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^\.jumo/assets/[A-Za-z0-9._/-]+\.(png|jpg|jpeg|svg|webp|json)$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:assetExports |
| native | jumo:assetExports |




## LinkML Source

<details>
```yaml
name: assetExports
description: 'Optional binary assets (images) and i18n bundles (json) the kit distributes,
  distinct from `exports` because these are opaque content, not corpus-governed YAML
  documents -- no LinkML class validates their bytes, only their provenance (KitLockSpec.renderedAssets
  digest). Images and i18n bundles share this one tree rather than splitting into
  two export lists: both are inert content a journey (AssistedJourneyStep.image/heroImage)
  or the frontend i18n loader references by rendered path, never executed.'
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: JumoKitSpec
domain_of:
- JumoKitSpec
range: string
multivalued: true
pattern: ^\.jumo/assets/[A-Za-z0-9._/-]+\.(png|jpg|jpeg|svg|webp|json)$

```
</details></div>