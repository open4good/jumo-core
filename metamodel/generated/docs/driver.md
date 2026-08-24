---
search:
  boost: 5.0
---

# Slot: driver

<div data-search-exclude markdown="1">



URI: [jumo:driver](https://jumo.dev/schemas/jumo-v1/driver)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineHostDefinitionSpec](MachineHostDefinitionSpec.md) | Specification for a MachineHostDefinition contract |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [MachineHostDefinitionSpec](MachineHostDefinitionSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [MachineHostDefinitionSpec](MachineHostDefinitionSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:driver |
| native | jumo:driver |




## LinkML Source

<details>
```yaml
name: driver
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: MachineHostDefinitionSpec
domain_of:
- MachineHostDefinitionSpec
range: string
required: true

```
</details></div>