---
search:
  boost: 5.0
---

# Slot: security


_Blast radius per operation, network egress, secret material held, and untrusted output._



<div data-search-exclude markdown="1">



URI: [jumo:security](https://jumo.dev/schemas/jumo-v1/security)
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
| self | jumo:security |
| native | jumo:security |




## LinkML Source

<details>
```yaml
name: security
description: Blast radius per operation, network egress, secret material held, and
  untrusted output.
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