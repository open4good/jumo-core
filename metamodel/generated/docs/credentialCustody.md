---
search:
  boost: 5.0
---

# Slot: credentialCustody


_Must equal LOCAL_CELL_SEALED (Rego, corpus.cell.credential-custody)._



<div data-search-exclude markdown="1">



URI: [jumo:credentialCustody](https://jumo.dev/schemas/jumo-v1/credentialCustody)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ExecutionCellSpec](ExecutionCellSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ExecutionCellCredentialCustody](ExecutionCellCredentialCustody.md) |
| Domain Of | [ExecutionCellSpec](ExecutionCellSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ExecutionCellSpec](ExecutionCellSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:credentialCustody |
| native | jumo:credentialCustody |




## LinkML Source

<details>
```yaml
name: credentialCustody
description: Must equal LOCAL_CELL_SEALED (Rego, corpus.cell.credential-custody).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ExecutionCellSpec
domain_of:
- ExecutionCellSpec
range: ExecutionCellCredentialCustody
required: true

```
</details></div>