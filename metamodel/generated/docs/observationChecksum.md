---
search:
  boost: 5.0
---

# Slot: observationChecksum

<div data-search-exclude markdown="1">



URI: [jumo:observationChecksum](https://jumo.dev/schemas/jumo-v1/observationChecksum)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpCatalogProvenancePin](McpCatalogProvenancePin.md) | Immutable source observation pin carried into generated connector material; i... |  no  |
| [McpCatalogVersion](McpCatalogVersion.md) |  |  no  |
| [McpCatalogFieldCandidate](McpCatalogFieldCandidate.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [McpCatalogProvenancePin](McpCatalogProvenancePin.md), [McpCatalogVersion](McpCatalogVersion.md), [McpCatalogFieldCandidate](McpCatalogFieldCandidate.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:observationChecksum |
| native | jumo:observationChecksum |




## LinkML Source

<details>
```yaml
name: observationChecksum
domain_of:
- McpCatalogProvenancePin
- McpCatalogVersion
- McpCatalogFieldCandidate
range: string

```
</details></div>