---
search:
  boost: 5.0
---

# Slot: moduleDigests

<div data-search-exclude markdown="1">



URI: [jumo:moduleDigests](https://jumo.dev/schemas/jumo-v1/moduleDigests)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [KitReleaseCertificationSpec](KitReleaseCertificationSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ModuleDigestEntry](ModuleDigestEntry.md) |
| Domain Of | [KitReleaseCertificationSpec](KitReleaseCertificationSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [KitReleaseCertificationSpec](KitReleaseCertificationSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:moduleDigests |
| native | jumo:moduleDigests |




## LinkML Source

<details>
```yaml
name: moduleDigests
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: KitReleaseCertificationSpec
domain_of:
- KitReleaseCertificationSpec
range: ModuleDigestEntry
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>