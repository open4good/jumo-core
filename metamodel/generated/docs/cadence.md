---
search:
  boost: 5.0
---

# Slot: cadence

<div data-search-exclude markdown="1">



URI: [jumo:cadence](https://jumo.dev/schemas/jumo-v1/cadence)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpRegistrySourceSpec](McpRegistrySourceSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Duration](Duration.md) |
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
| self | jumo:cadence |
| native | jumo:cadence |




## LinkML Source

<details>
```yaml
name: cadence
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: McpRegistrySourceSpec
domain_of:
- McpRegistrySourceSpec
range: Duration
required: true

```
</details></div>