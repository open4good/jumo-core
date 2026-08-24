---
search:
  boost: 5.0
---

# Slot: agentUsability


_Whether an agent can use it without guessing._



<div data-search-exclude markdown="1">



URI: [jumo:agentUsability](https://jumo.dev/schemas/jumo-v1/agentUsability)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AppraisalDimensions](AppraisalDimensions.md) | Four questions asked of every submission, separate because they fail independ... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [AppraisalDimension](AppraisalDimension.md) |
| Domain Of | [AppraisalDimensions](AppraisalDimensions.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AppraisalDimensions](AppraisalDimensions.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:agentUsability |
| native | jumo:agentUsability |




## LinkML Source

<details>
```yaml
name: agentUsability
description: Whether an agent can use it without guessing.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AppraisalDimensions
domain_of:
- AppraisalDimensions
range: AppraisalDimension
required: true
inlined: true

```
</details></div>