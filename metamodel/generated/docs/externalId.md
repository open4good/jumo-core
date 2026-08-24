---
search:
  boost: 5.0
---

# Slot: externalId

<div data-search-exclude markdown="1">



URI: [jumo:externalId](https://jumo.dev/schemas/jumo-v1/externalId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpCatalogProvenancePin](McpCatalogProvenancePin.md) | Immutable source observation pin carried into generated connector material; i... |  no  |
| [ChangeSetProjection](ChangeSetProjection.md) | Observed record of the single atomic PR ForgeApplier opened for a ChangeSetPr... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [McpCatalogProvenancePin](McpCatalogProvenancePin.md), [ChangeSetProjection](ChangeSetProjection.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:externalId |
| native | jumo:externalId |




## LinkML Source

<details>
```yaml
name: externalId
domain_of:
- McpCatalogProvenancePin
- ChangeSetProjection
range: string

```
</details></div>