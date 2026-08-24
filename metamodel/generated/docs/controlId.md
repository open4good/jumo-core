---
search:
  boost: 5.0
---

# Slot: controlId

<div data-search-exclude markdown="1">



URI: [jumo:controlId](https://jumo.dev/schemas/jumo-v1/controlId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [Control](Control.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [Control](Control.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [Control](Control.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^.{2,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:controlId |
| native | jumo:controlId |




## LinkML Source

<details>
```yaml
name: controlId
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: Control
domain_of:
- Control
range: string
required: true
pattern: ^.{2,}$

```
</details></div>