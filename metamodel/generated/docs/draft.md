---
search:
  boost: 5.0
---

# Slot: draft

<div data-search-exclude markdown="1">



URI: [jumo:draft](https://jumo.dev/schemas/jumo-v1/draft)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ComplianceMapping](ComplianceMapping.md) | Example mappings are marked DRAFT; no MAPPED or EVIDENCED status may be displ... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Boolean](Boolean.md) |
| Domain Of | [ComplianceMapping](ComplianceMapping.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `true` |
| Owner | [ComplianceMapping](ComplianceMapping.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:draft |
| native | jumo:draft |




## LinkML Source

<details>
```yaml
name: draft
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: 'true'
owner: ComplianceMapping
domain_of:
- ComplianceMapping
range: boolean

```
</details></div>