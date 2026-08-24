---
search:
  boost: 5.0
---

# Slot: catalogId

<div data-search-exclude markdown="1">



URI: [jumo:catalogId](https://jumo.dev/schemas/jumo-v1/catalogId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpCatalogServer](McpCatalogServer.md) | Recognized PostgreSQL projection of sourced catalog observations |  no  |
| [McpCatalogVersion](McpCatalogVersion.md) |  |  no  |
| [McpCatalogIdentity](McpCatalogIdentity.md) |  |  no  |
| [McpCatalogAssessment](McpCatalogAssessment.md) |  |  no  |
| [McpCatalogFieldCandidate](McpCatalogFieldCandidate.md) |  |  no  |
| [McpCatalogFieldSelection](McpCatalogFieldSelection.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [McpCatalogServer](McpCatalogServer.md), [McpCatalogVersion](McpCatalogVersion.md), [McpCatalogIdentity](McpCatalogIdentity.md), [McpCatalogAssessment](McpCatalogAssessment.md), [McpCatalogFieldCandidate](McpCatalogFieldCandidate.md), [McpCatalogFieldSelection](McpCatalogFieldSelection.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:catalogId |
| native | jumo:catalogId |




## LinkML Source

<details>
```yaml
name: catalogId
domain_of:
- McpCatalogServer
- McpCatalogVersion
- McpCatalogIdentity
- McpCatalogAssessment
- McpCatalogFieldCandidate
- McpCatalogFieldSelection
range: string

```
</details></div>