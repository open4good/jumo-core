---
search:
  boost: 5.0
---

# Slot: optionsFromEnum


_A generated LinkML enumeration whose permissible values populate this field's options, for a field whose domain is a closed vocabulary rather than a contract kind. Mutually exclusive with optionsFrom (Rego). Rego checks that an ENUMERATION field declares one of the two, not that this names an enumeration rather than a class: the repository facts carry per-class slots, not permissible values, so the narrower check waits on a fact this module does not produce._



<div data-search-exclude markdown="1">



URI: [jumo:optionsFromEnum](https://jumo.dev/schemas/jumo-v1/optionsFromEnum)
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












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:optionsFromEnum |
| native | jumo:optionsFromEnum |




## LinkML Source

<details>
```yaml
name: optionsFromEnum
description: 'A generated LinkML enumeration whose permissible values populate this
  field''s options, for a field whose domain is a closed vocabulary rather than a
  contract kind. Mutually exclusive with optionsFrom (Rego). Rego checks that an ENUMERATION
  field declares one of the two, not that this names an enumeration rather than a
  class: the repository facts carry per-class slots, not permissible values, so the
  narrower check waits on a fact this module does not produce.'
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProjectionField
domain_of:
- ProjectionField
range: string

```
</details></div>