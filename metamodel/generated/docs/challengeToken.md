---
search:
  boost: 5.0
---

# Slot: challengeToken

<div data-search-exclude markdown="1">



URI: [jumo:challengeToken](https://jumo.dev/schemas/jumo-v1/challengeToken)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineEnrollmentRequest](MachineEnrollmentRequest.md) | BYOVM one-shot machine enrollment request carrying CSR and system inventory |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [MachineEnrollmentRequest](MachineEnrollmentRequest.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [MachineEnrollmentRequest](MachineEnrollmentRequest.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:challengeToken |
| native | jumo:challengeToken |




## LinkML Source

<details>
```yaml
name: challengeToken
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: MachineEnrollmentRequest
domain_of:
- MachineEnrollmentRequest
range: string
required: true

```
</details></div>