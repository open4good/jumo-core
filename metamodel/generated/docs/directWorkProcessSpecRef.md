---
search:
  boost: 5.0
---

# Slot: directWorkProcessSpecRef


_Governed child Episode started by HANDLE_DIRECTLY; cannot be the intake workflow itself (Rego). References a ProcessSpec (execution.yaml)._



<div data-search-exclude markdown="1">



URI: [jumo:directWorkProcessSpecRef](https://jumo.dev/schemas/jumo-v1/directWorkProcessSpecRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ChiefOfStaffProfileSpec](ChiefOfStaffProfileSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [ChiefOfStaffProfileSpec](ChiefOfStaffProfileSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ChiefOfStaffProfileSpec](ChiefOfStaffProfileSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:directWorkProcessSpecRef |
| native | jumo:directWorkProcessSpecRef |




## LinkML Source

<details>
```yaml
name: directWorkProcessSpecRef
description: Governed child Episode started by HANDLE_DIRECTLY; cannot be the intake
  workflow itself (Rego). References a ProcessSpec (execution.yaml).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ChiefOfStaffProfileSpec
domain_of:
- ChiefOfStaffProfileSpec
range: ContractReference
required: true
inlined: true

```
</details></div>