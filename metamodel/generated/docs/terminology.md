---
search:
  boost: 5.0
---

# Slot: terminology


_Display names by role key, such as chiefOfStaff or securityAgent. The technical identifier is unaffected._



<div data-search-exclude markdown="1">



URI: [jumo:terminology](https://jumo.dev/schemas/jumo-v1/terminology)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ThemePackSpec](ThemePackSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [TerminologyEntry](TerminologyEntry.md) |
| Domain Of | [ThemePackSpec](ThemePackSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ThemePackSpec](ThemePackSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:terminology |
| native | jumo:terminology |




## LinkML Source

<details>
```yaml
name: terminology
description: Display names by role key, such as chiefOfStaff or securityAgent. The
  technical identifier is unaffected.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ThemePackSpec
domain_of:
- ThemePackSpec
range: TerminologyEntry
required: true
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 1

```
</details></div>