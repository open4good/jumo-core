---
search:
  boost: 5.0
---

# Slot: gatewayMode

<div data-search-exclude markdown="1">



URI: [jumo:gatewayMode](https://jumo.dev/schemas/jumo-v1/gatewayMode)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProcessStep](ProcessStep.md) | One node in the process graph |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ProcessGatewayMode](ProcessGatewayMode.md) |
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
| self | jumo:gatewayMode |
| native | jumo:gatewayMode |




## LinkML Source

<details>
```yaml
name: gatewayMode
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProcessStep
domain_of:
- ProcessStep
range: ProcessGatewayMode

```
</details></div>