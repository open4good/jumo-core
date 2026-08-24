---
search:
  boost: 5.0
---

# Slot: helpI18nKey

<div data-search-exclude markdown="1">



URI: [jumo:helpI18nKey](https://jumo.dev/schemas/jumo-v1/helpI18nKey)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProjectionField](ProjectionField.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ProjectionField](ProjectionField.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProjectionField](ProjectionField.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^[a-z][a-zA-Z0-9]*$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:helpI18nKey |
| native | jumo:helpI18nKey |




## LinkML Source

<details>
```yaml
name: helpI18nKey
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProjectionField
domain_of:
- ProjectionField
range: string
pattern: ^[a-z][a-zA-Z0-9]*$

```
</details></div>