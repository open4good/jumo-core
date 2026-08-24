---
search:
  boost: 5.0
---

# Slot: roomId

<div data-search-exclude markdown="1">



URI: [jumo:roomId](https://jumo.dev/schemas/jumo-v1/roomId)
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
| Regex Pattern | `^[a-z][a-z0-9-]*$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:roomId |
| native | jumo:roomId |




## LinkML Source

<details>
```yaml
name: roomId
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ThemeRoom
domain_of:
- ThemeRoom
range: string
required: true
pattern: ^[a-z][a-z0-9-]*$

```
</details></div>