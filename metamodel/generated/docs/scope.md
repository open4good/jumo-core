---
search:
  boost: 5.0
---

# Slot: scope

<div data-search-exclude markdown="1">



URI: [jumo:scope](https://jumo.dev/schemas/jumo-v1/scope)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [PolicySetSpec](PolicySetSpec.md) |  |  no  |
| [ProviderQuotaObservation](ProviderQuotaObservation.md) | Observed quota and rate limit status from an upstream provider |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [PolicySetSpec](PolicySetSpec.md), [ProviderQuotaObservation](ProviderQuotaObservation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:scope |
| native | jumo:scope |




## LinkML Source

<details>
```yaml
name: scope
domain_of:
- PolicySetSpec
- ProviderQuotaObservation
range: string

```
</details></div>