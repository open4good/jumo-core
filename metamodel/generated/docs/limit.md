---
search:
  boost: 5.0
---

# Slot: limit

<div data-search-exclude markdown="1">



URI: [jumo:limit](https://jumo.dev/schemas/jumo-v1/limit)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProviderQuotaObservation](ProviderQuotaObservation.md) | Observed quota and rate limit status from an upstream provider |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Float](Float.md) |
| Domain Of | [ProviderQuotaObservation](ProviderQuotaObservation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
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
| self | jumo:limit |
| native | jumo:limit |




## LinkML Source

<details>
```yaml
name: limit
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProviderQuotaObservation
domain_of:
- ProviderQuotaObservation
range: float

```
</details></div>