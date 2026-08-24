---
search:
  boost: 5.0
---

# Slot: complianceProfileRef

<div data-search-exclude markdown="1">



URI: [jumo:complianceProfileRef](https://jumo.dev/schemas/jumo-v1/complianceProfileRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ControlAssessment](ControlAssessment.md) | Recognized result of assessing a Control against a ComplianceProfile, with ob... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
| Domain Of | [ControlAssessment](ControlAssessment.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ControlAssessment](ControlAssessment.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:complianceProfileRef |
| native | jumo:complianceProfileRef |




## LinkML Source

<details>
```yaml
name: complianceProfileRef
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ControlAssessment
domain_of:
- ControlAssessment
range: Identifier
required: true

```
</details></div>