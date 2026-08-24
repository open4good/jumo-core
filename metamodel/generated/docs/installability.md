---
search:
  boost: 5.0
---

# Slot: installability

<div data-search-exclude markdown="1">



URI: [jumo:installability](https://jumo.dev/schemas/jumo-v1/installability)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpCatalogServer](McpCatalogServer.md) | Recognized PostgreSQL projection of sourced catalog observations |  no  |
| [McpCatalogVersion](McpCatalogVersion.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [McpCatalogServer](McpCatalogServer.md), [McpCatalogVersion](McpCatalogVersion.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:installability |
| native | jumo:installability |




## LinkML Source

<details>
```yaml
name: installability
domain_of:
- McpCatalogServer
- McpCatalogVersion
range: string

```
</details></div>