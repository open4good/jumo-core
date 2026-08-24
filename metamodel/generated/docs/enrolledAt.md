---
search:
  boost: 5.0
---

# Slot: enrolledAt

<div data-search-exclude markdown="1">



URI: [jumo:enrolledAt](https://jumo.dev/schemas/jumo-v1/enrolledAt)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineEnrollmentResult](MachineEnrollmentResult.md) | Result of a machine enrollment challenge containing issued mTLS certificates |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [MachineEnrollmentResult](MachineEnrollmentResult.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [MachineEnrollmentResult](MachineEnrollmentResult.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:enrolledAt |
| native | jumo:enrolledAt |




## LinkML Source

<details>
```yaml
name: enrolledAt
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: MachineEnrollmentResult
domain_of:
- MachineEnrollmentResult
range: string
required: true

```
</details></div>