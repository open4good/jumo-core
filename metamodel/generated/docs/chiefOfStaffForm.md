---
search:
  boost: 5.0
---

# Slot: chiefOfStaffForm


_Named visual form. Naming one does not name an agent._



<div data-search-exclude markdown="1">



URI: [jumo:chiefOfStaffForm](https://jumo.dev/schemas/jumo-v1/chiefOfStaffForm)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ThemePresence](ThemePresence.md) | How the Chief of Staff is drawn on a surface |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ThemePresence](ThemePresence.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ThemePresence](ThemePresence.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^.{3,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:chiefOfStaffForm |
| native | jumo:chiefOfStaffForm |




## LinkML Source

<details>
```yaml
name: chiefOfStaffForm
description: Named visual form. Naming one does not name an agent.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ThemePresence
domain_of:
- ThemePresence
range: string
pattern: ^.{3,}$

```
</details></div>