---
search:
  boost: 5.0
---

# Slot: edition


_e.g. "2023", "2022" -- the referential's published edition, never its text._



<div data-search-exclude markdown="1">



URI: [jumo:edition](https://jumo.dev/schemas/jumo-v1/edition)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ComplianceProfileSpec](ComplianceProfileSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ComplianceProfileSpec](ComplianceProfileSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ComplianceProfileSpec](ComplianceProfileSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:edition |
| native | jumo:edition |




## LinkML Source

<details>
```yaml
name: edition
description: e.g. "2023", "2022" -- the referential's published edition, never its
  text.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ComplianceProfileSpec
domain_of:
- ComplianceProfileSpec
range: string

```
</details></div>