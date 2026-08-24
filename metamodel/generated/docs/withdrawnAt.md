---
search:
  boost: 5.0
---

# Slot: withdrawnAt

<div data-search-exclude markdown="1">



URI: [jumo:withdrawnAt](https://jumo.dev/schemas/jumo-v1/withdrawnAt)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpCatalogServer](McpCatalogServer.md) | Recognized PostgreSQL projection of sourced catalog observations |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Datetime](Datetime.md) |
| Domain Of | [McpCatalogServer](McpCatalogServer.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [McpCatalogServer](McpCatalogServer.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:withdrawnAt |
| native | jumo:withdrawnAt |




## LinkML Source

<details>
```yaml
name: withdrawnAt
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: McpCatalogServer
domain_of:
- McpCatalogServer
range: datetime

```
</details></div>