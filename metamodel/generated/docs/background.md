---
search:
  boost: 5.0
---

# Slot: background


_Asset reference for the room's illustrated 2D backdrop._



<div data-search-exclude markdown="1">



URI: [jumo:background](https://jumo.dev/schemas/jumo-v1/background)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ThemeRoom](ThemeRoom.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ThemeRoom](ThemeRoom.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ThemeRoom](ThemeRoom.md) |


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
| self | jumo:background |
| native | jumo:background |




## LinkML Source

<details>
```yaml
name: background
description: Asset reference for the room's illustrated 2D backdrop.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ThemeRoom
domain_of:
- ThemeRoom
range: string
required: true
pattern: ^.{3,}$

```
</details></div>