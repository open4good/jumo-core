---
search:
  boost: 5.0
---

# Slot: release

<div data-search-exclude markdown="1">



URI: [jumo:release](https://jumo.dev/schemas/jumo-v1/release)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [KitReference](KitReference.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [KitReference](KitReference.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [KitReference](KitReference.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^.{1,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:release |
| native | jumo:release |




## LinkML Source

<details>
```yaml
name: release
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: KitReference
domain_of:
- KitReference
range: string
pattern: ^.{1,}$

```
</details></div>