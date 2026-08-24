---
search:
  boost: 5.0
---

# Slot: appraisedDigest


_The exact artifact that was looked at. When the bundle digest moves, this appraisal stops being accepted, so an upstream version bump cannot inherit the prior review._



<div data-search-exclude markdown="1">



URI: [jumo:appraisedDigest](https://jumo.dev/schemas/jumo-v1/appraisedDigest)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConnectorAppraisalSpec](ConnectorAppraisalSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ConnectorAppraisalSpec](ConnectorAppraisalSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ConnectorAppraisalSpec](ConnectorAppraisalSpec.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^sha256:[0-9a-f]{64}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:appraisedDigest |
| native | jumo:appraisedDigest |




## LinkML Source

<details>
```yaml
name: appraisedDigest
description: The exact artifact that was looked at. When the bundle digest moves,
  this appraisal stops being accepted, so an upstream version bump cannot inherit
  the prior review.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ConnectorAppraisalSpec
domain_of:
- ConnectorAppraisalSpec
range: string
required: true
pattern: ^sha256:[0-9a-f]{64}$

```
</details></div>