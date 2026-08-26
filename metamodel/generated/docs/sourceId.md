---
search:
  boost: 5.0
---

# Slot: sourceId

<div data-search-exclude markdown="1">



URI: [jumo:sourceId](https://jumo.dev/schemas/jumo-v1/sourceId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpCatalogProvenancePin](McpCatalogProvenancePin.md) | Immutable source observation pin carried into generated connector material; i... |  no  |
| [McpCatalogIdentity](McpCatalogIdentity.md) |  |  no  |
| [McpCatalogFieldCandidate](McpCatalogFieldCandidate.md) |  |  no  |
| [McpRegistrySyncStatus](McpRegistrySyncStatus.md) |  |  no  |
| [NestedOptionsSource](NestedOptionsSource.md) | Resolves a field's options from a nested multivalued attribute of one specifi... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [McpCatalogProvenancePin](McpCatalogProvenancePin.md), [McpCatalogIdentity](McpCatalogIdentity.md), [McpCatalogFieldCandidate](McpCatalogFieldCandidate.md), [McpRegistrySyncStatus](McpRegistrySyncStatus.md), [NestedOptionsSource](NestedOptionsSource.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:sourceId |
| native | jumo:sourceId |




## LinkML Source

<details>
```yaml
name: sourceId
domain_of:
- McpCatalogProvenancePin
- McpCatalogIdentity
- McpCatalogFieldCandidate
- McpRegistrySyncStatus
- NestedOptionsSource
range: string

```
</details></div>