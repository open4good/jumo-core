---
search:
  boost: 5.0
---

# Slot: confidence

<div data-search-exclude markdown="1">



URI: [jumo:confidence](https://jumo.dev/schemas/jumo-v1/confidence)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AttentionItemSpec](AttentionItemSpec.md) |  |  no  |
| [ProviderQuotaObservation](ProviderQuotaObservation.md) | Observed quota and rate limit status from an upstream provider |  no  |
| [McpCatalogFieldCandidate](McpCatalogFieldCandidate.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [AttentionItemSpec](AttentionItemSpec.md), [ProviderQuotaObservation](ProviderQuotaObservation.md), [McpCatalogFieldCandidate](McpCatalogFieldCandidate.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:confidence |
| native | jumo:confidence |




## LinkML Source

<details>
```yaml
name: confidence
domain_of:
- AttentionItemSpec
- ProviderQuotaObservation
- McpCatalogFieldCandidate
range: string

```
</details></div>