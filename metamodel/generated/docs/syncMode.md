---
search:
  boost: 5.0
---

# Slot: syncMode

<div data-search-exclude markdown="1">



URI: [jumo:syncMode](https://jumo.dev/schemas/jumo-v1/syncMode)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpRegistrySourceSpec](McpRegistrySourceSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [McpRegistrySyncMode](McpRegistrySyncMode.md) |
| Domain Of | [McpRegistrySourceSpec](McpRegistrySourceSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [McpRegistrySourceSpec](McpRegistrySourceSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:syncMode |
| native | jumo:syncMode |




## LinkML Source

<details>
```yaml
name: syncMode
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: McpRegistrySourceSpec
domain_of:
- McpRegistrySourceSpec
range: McpRegistrySyncMode
required: true

```
</details></div>