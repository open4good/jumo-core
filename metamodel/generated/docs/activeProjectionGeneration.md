---
search:
  boost: 5.0
---

# Slot: activeProjectionGeneration

<div data-search-exclude markdown="1">



URI: [jumo:activeProjectionGeneration](https://jumo.dev/schemas/jumo-v1/activeProjectionGeneration)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpCatalogServer](McpCatalogServer.md) | Recognized PostgreSQL projection of sourced catalog observations |  no  |
| [McpRegistrySyncStatus](McpRegistrySyncStatus.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [McpCatalogServer](McpCatalogServer.md), [McpRegistrySyncStatus](McpRegistrySyncStatus.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:activeProjectionGeneration |
| native | jumo:activeProjectionGeneration |




## LinkML Source

<details>
```yaml
name: activeProjectionGeneration
domain_of:
- McpCatalogServer
- McpRegistrySyncStatus
range: string

```
</details></div>