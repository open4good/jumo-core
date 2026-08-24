---
search:
  boost: 5.0
---

# Slot: controlRef

<div data-search-exclude markdown="1">



URI: [jumo:controlRef](https://jumo.dev/schemas/jumo-v1/controlRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ComplianceMapping](ComplianceMapping.md) | Example mappings are marked DRAFT; no MAPPED or EVIDENCED status may be displ... |  no  |
| [ControlAssessment](ControlAssessment.md) | Recognized result of assessing a Control against a ComplianceProfile, with ob... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ComplianceMapping](ComplianceMapping.md), [ControlAssessment](ControlAssessment.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:controlRef |
| native | jumo:controlRef |




## LinkML Source

<details>
```yaml
name: controlRef
domain_of:
- ComplianceMapping
- ControlAssessment
range: string

```
</details></div>