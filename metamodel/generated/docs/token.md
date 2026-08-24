---
search:
  boost: 5.0
---

# Slot: token

<div data-search-exclude markdown="1">



URI: [jumo:token](https://jumo.dev/schemas/jumo-v1/token)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineEnrollmentChallenge](MachineEnrollmentChallenge.md) | Short-lived enrollment challenge issued by the control plane |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [MachineEnrollmentChallenge](MachineEnrollmentChallenge.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [MachineEnrollmentChallenge](MachineEnrollmentChallenge.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:token |
| native | jumo:token |




## LinkML Source

<details>
```yaml
name: token
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: MachineEnrollmentChallenge
domain_of:
- MachineEnrollmentChallenge
range: string
required: true

```
</details></div>