---
search:
  boost: 5.0
---

# Slot: connectorDefinitionRefs

<div data-search-exclude markdown="1">



URI: [jumo:connectorDefinitionRefs](https://jumo.dev/schemas/jumo-v1/connectorDefinitionRefs)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ExecutionCellSpec](ExecutionCellSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [ExecutionCellSpec](ExecutionCellSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
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
| self | jumo:connectorDefinitionRefs |
| native | jumo:connectorDefinitionRefs |




## LinkML Source

<details>
```yaml
name: connectorDefinitionRefs
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ExecutionCellSpec
domain_of:
- ExecutionCellSpec
range: ContractReference
required: true
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 1

```
</details></div>