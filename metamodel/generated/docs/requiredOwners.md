---
search:
  boost: 5.0
---

# Slot: requiredOwners

<div data-search-exclude markdown="1">



URI: [jumo:requiredOwners](https://jumo.dev/schemas/jumo-v1/requiredOwners)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [SolicitationApproval](SolicitationApproval.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [RequiredOwners](RequiredOwners.md) |
| Domain Of | [SolicitationApproval](SolicitationApproval.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [SolicitationApproval](SolicitationApproval.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:requiredOwners |
| native | jumo:requiredOwners |




## LinkML Source

<details>
```yaml
name: requiredOwners
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: SolicitationApproval
domain_of:
- SolicitationApproval
range: RequiredOwners
required: true

```
</details></div>