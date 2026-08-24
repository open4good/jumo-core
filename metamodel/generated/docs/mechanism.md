---
search:
  boost: 5.0
---

# Slot: mechanism

<div data-search-exclude markdown="1">



URI: [jumo:mechanism](https://jumo.dev/schemas/jumo-v1/mechanism)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [CoordinationMechanismBinding](CoordinationMechanismBinding.md) | One coordination mechanism scoped to the dependency it actually governs, repl... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [CoordinationMechanism](CoordinationMechanism.md) |
| Domain Of | [CoordinationMechanismBinding](CoordinationMechanismBinding.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [CoordinationMechanismBinding](CoordinationMechanismBinding.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:mechanism |
| native | jumo:mechanism |




## LinkML Source

<details>
```yaml
name: mechanism
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: CoordinationMechanismBinding
domain_of:
- CoordinationMechanismBinding
range: CoordinationMechanism
required: true

```
</details></div>