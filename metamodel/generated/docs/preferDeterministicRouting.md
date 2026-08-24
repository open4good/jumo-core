---
search:
  boost: 5.0
---

# Slot: preferDeterministicRouting

<div data-search-exclude markdown="1">



URI: [jumo:preferDeterministicRouting](https://jumo.dev/schemas/jumo-v1/preferDeterministicRouting)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ResourceBudgetSpec](ResourceBudgetSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Boolean](Boolean.md) |
| Domain Of | [ResourceBudgetSpec](ResourceBudgetSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `true` |
| Owner | [ResourceBudgetSpec](ResourceBudgetSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:preferDeterministicRouting |
| native | jumo:preferDeterministicRouting |




## LinkML Source

<details>
```yaml
name: preferDeterministicRouting
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: 'true'
owner: ResourceBudgetSpec
domain_of:
- ResourceBudgetSpec
range: boolean

```
</details></div>