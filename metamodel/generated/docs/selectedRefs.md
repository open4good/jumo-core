---
search:
  boost: 5.0
---

# Slot: selectedRefs


_Ids proposed, of the kind PromptOutput.targetKind names, referencing the supplied catalog only._



<div data-search-exclude markdown="1">



URI: [jumo:selectedRefs](https://jumo.dev/schemas/jumo-v1/selectedRefs)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [SelectionIntentProposal](SelectionIntentProposal.md) | Structured output of a DIALOGUE_COLLECT step capturing what the assistant pro... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [SelectionIntentProposal](SelectionIntentProposal.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [SelectionIntentProposal](SelectionIntentProposal.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:selectedRefs |
| native | jumo:selectedRefs |




## LinkML Source

<details>
```yaml
name: selectedRefs
description: Ids proposed, of the kind PromptOutput.targetKind names, referencing
  the supplied catalog only.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: SelectionIntentProposal
domain_of:
- SelectionIntentProposal
range: ContractReference
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>