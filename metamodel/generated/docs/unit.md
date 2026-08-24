---
search:
  boost: 5.0
---

# Slot: unit

<div data-search-exclude markdown="1">



URI: [jumo:unit](https://jumo.dev/schemas/jumo-v1/unit)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProviderQuotaObservation](ProviderQuotaObservation.md) | Observed quota and rate limit status from an upstream provider |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ProviderQuotaObservation](ProviderQuotaObservation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProviderQuotaObservation](ProviderQuotaObservation.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:unit |
| native | jumo:unit |




## LinkML Source

<details>
```yaml
name: unit
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProviderQuotaObservation
domain_of:
- ProviderQuotaObservation
range: string
required: true

```
</details></div>