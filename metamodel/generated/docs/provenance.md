---
search:
  boost: 5.0
---

# Slot: provenance

<div data-search-exclude markdown="1">



URI: [jumo:provenance](https://jumo.dev/schemas/jumo-v1/provenance)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProviderQuotaObservation](ProviderQuotaObservation.md) | Observed quota and rate limit status from an upstream provider |  no  |
| [AppraisalDimensions](AppraisalDimensions.md) | Four questions asked of every submission, separate because they fail independ... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ProviderQuotaObservation](ProviderQuotaObservation.md), [AppraisalDimensions](AppraisalDimensions.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:provenance |
| native | jumo:provenance |




## LinkML Source

<details>
```yaml
name: provenance
domain_of:
- ProviderQuotaObservation
- AppraisalDimensions
range: string

```
</details></div>