---
search:
  boost: 5.0
---

# Slot: requiredCapabilities


_Complete capability allowlist for this journey. The runtime journey authorization entrypoint checks every admitted action against it; ProjectionSpec.actions and emitsCapability must be subsets (Rego)._



<div data-search-exclude markdown="1">



URI: [jumo:requiredCapabilities](https://jumo.dev/schemas/jumo-v1/requiredCapabilities)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneySpec](AssistedJourneySpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [CapabilityName](CapabilityName.md) |
| Domain Of | [AssistedJourneySpec](AssistedJourneySpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AssistedJourneySpec](AssistedJourneySpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:requiredCapabilities |
| native | jumo:requiredCapabilities |




## LinkML Source

<details>
```yaml
name: requiredCapabilities
description: Complete capability allowlist for this journey. The runtime journey authorization
  entrypoint checks every admitted action against it; ProjectionSpec.actions and emitsCapability
  must be subsets (Rego).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneySpec
domain_of:
- AssistedJourneySpec
range: CapabilityName
required: true
multivalued: true
minimum_cardinality: 1

```
</details></div>