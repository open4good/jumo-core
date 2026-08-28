---
search:
  boost: 5.0
---

# Slot: rationale


_One entry per selectedRefs, explaining the match to the stated intent._



<div data-search-exclude markdown="1">



URI: [jumo:rationale](https://jumo.dev/schemas/jumo-v1/rationale)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [SelectionIntentProposal](SelectionIntentProposal.md) | Structured output of a DIALOGUE_COLLECT step capturing what the assistant pro... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [SelectionIntentRationale](SelectionIntentRationale.md) |
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
| self | jumo:rationale |
| native | jumo:rationale |




## LinkML Source

<details>
```yaml
name: rationale
description: One entry per selectedRefs, explaining the match to the stated intent.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: SelectionIntentProposal
domain_of:
- SelectionIntentProposal
range: SelectionIntentRationale
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>