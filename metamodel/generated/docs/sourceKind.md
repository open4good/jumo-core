---
search:
  boost: 5.0
---

# Slot: sourceKind


_The declared ContractKind holding the nested list. Must name a declared kind (Rego), the same check optionsFrom uses._



<div data-search-exclude markdown="1">



URI: [jumo:sourceKind](https://jumo.dev/schemas/jumo-v1/sourceKind)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [NestedOptionsSource](NestedOptionsSource.md) | Resolves a field's options from a nested multivalued attribute of one specifi... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [NestedOptionsSource](NestedOptionsSource.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [NestedOptionsSource](NestedOptionsSource.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:sourceKind |
| native | jumo:sourceKind |




## LinkML Source

<details>
```yaml
name: sourceKind
description: The declared ContractKind holding the nested list. Must name a declared
  kind (Rego), the same check optionsFrom uses.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: NestedOptionsSource
domain_of:
- NestedOptionsSource
range: string
required: true

```
</details></div>