---
search:
  boost: 5.0
---

# Slot: capturedAt

<div data-search-exclude markdown="1">



URI: [jumo:capturedAt](https://jumo.dev/schemas/jumo-v1/capturedAt)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [CliUsageObservation](CliUsageObservation.md) | Observed consumption metrics from CLI tool invocations |  no  |
| [ProviderQuotaObservation](ProviderQuotaObservation.md) | Observed quota and rate limit status from an upstream provider |  no  |
| [EvidenceRecord](EvidenceRecord.md) | Append-only sanitized execution observation linked to one WorkerInvocation |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [CliUsageObservation](CliUsageObservation.md), [ProviderQuotaObservation](ProviderQuotaObservation.md), [EvidenceRecord](EvidenceRecord.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:capturedAt |
| native | jumo:capturedAt |




## LinkML Source

<details>
```yaml
name: capturedAt
domain_of:
- CliUsageObservation
- ProviderQuotaObservation
- EvidenceRecord
range: string

```
</details></div>