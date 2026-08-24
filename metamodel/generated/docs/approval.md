---
search:
  boost: 5.0
---

# Slot: approval

<div data-search-exclude markdown="1">



URI: [jumo:approval](https://jumo.dev/schemas/jumo-v1/approval)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [SolicitationContractSpec](SolicitationContractSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [SolicitationApproval](SolicitationApproval.md) |
| Domain Of | [SolicitationContractSpec](SolicitationContractSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [SolicitationContractSpec](SolicitationContractSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:approval |
| native | jumo:approval |




## LinkML Source

<details>
```yaml
name: approval
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: SolicitationContractSpec
domain_of:
- SolicitationContractSpec
range: SolicitationApproval
required: true
inlined: true

```
</details></div>