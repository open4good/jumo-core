---
search:
  boost: 5.0
---

# Slot: certificatePem

<div data-search-exclude markdown="1">



URI: [jumo:certificatePem](https://jumo.dev/schemas/jumo-v1/certificatePem)
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
| self | jumo:certificatePem |
| native | jumo:certificatePem |




## LinkML Source

<details>
```yaml
name: certificatePem
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: MachineEnrollmentResult
domain_of:
- MachineEnrollmentResult
range: string
required: true

```
</details></div>