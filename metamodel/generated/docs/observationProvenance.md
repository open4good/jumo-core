---
search:
  boost: 5.0
---

# Slot: observationProvenance

<div data-search-exclude markdown="1">



URI: [jumo:observationProvenance](https://jumo.dev/schemas/jumo-v1/observationProvenance)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProviderAccountSpec](ProviderAccountSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ProviderObservationProvenance](ProviderObservationProvenance.md) |
| Domain Of | [ProviderAccountSpec](ProviderAccountSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProviderAccountSpec](ProviderAccountSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:observationProvenance |
| native | jumo:observationProvenance |




## LinkML Source

<details>
```yaml
name: observationProvenance
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProviderAccountSpec
domain_of:
- ProviderAccountSpec
range: ProviderObservationProvenance
required: true

```
</details></div>