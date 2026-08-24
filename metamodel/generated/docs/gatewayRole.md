---
search:
  boost: 5.0
---

# Slot: gatewayRole

<div data-search-exclude markdown="1">



URI: [jumo:gatewayRole](https://jumo.dev/schemas/jumo-v1/gatewayRole)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProcessStep](ProcessStep.md) | One node in the process graph |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ProcessGatewayRole](ProcessGatewayRole.md) |
| Domain Of | [ProcessStep](ProcessStep.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProcessStep](ProcessStep.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:gatewayRole |
| native | jumo:gatewayRole |




## LinkML Source

<details>
```yaml
name: gatewayRole
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProcessStep
domain_of:
- ProcessStep
range: ProcessGatewayRole

```
</details></div>