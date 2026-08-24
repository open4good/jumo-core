---
search:
  boost: 5.0
---

# Slot: bootstrapDigest

<div data-search-exclude markdown="1">



URI: [jumo:bootstrapDigest](https://jumo.dev/schemas/jumo-v1/bootstrapDigest)
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
| self | jumo:bootstrapDigest |
| native | jumo:bootstrapDigest |




## LinkML Source

<details>
```yaml
name: bootstrapDigest
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: MachineEnrollmentChallenge
domain_of:
- MachineEnrollmentChallenge
range: string
required: true

```
</details></div>