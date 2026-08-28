---
search:
  boost: 5.0
---

# Slot: openQuestion


_A clarifying question to continue the dialogue when intent is still ambiguous. Absent once the proposal is considered final for this turn._



<div data-search-exclude markdown="1">



URI: [jumo:openQuestion](https://jumo.dev/schemas/jumo-v1/openQuestion)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [SelectionIntentProposal](SelectionIntentProposal.md) | Structured output of a DIALOGUE_COLLECT step capturing what the assistant pro... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [SelectionIntentProposal](SelectionIntentProposal.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
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
| self | jumo:openQuestion |
| native | jumo:openQuestion |




## LinkML Source

<details>
```yaml
name: openQuestion
description: A clarifying question to continue the dialogue when intent is still ambiguous.
  Absent once the proposal is considered final for this turn.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: SelectionIntentProposal
domain_of:
- SelectionIntentProposal
range: string

```
</details></div>