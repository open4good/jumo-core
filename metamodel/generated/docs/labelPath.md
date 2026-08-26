---
search:
  boost: 5.0
---

# Slot: labelPath


_Dotted path, relative to each nested entry, used as the option's display title. Defaults to the entry's own `id` when absent._



<div data-search-exclude markdown="1">



URI: [jumo:labelPath](https://jumo.dev/schemas/jumo-v1/labelPath)
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
| self | jumo:labelPath |
| native | jumo:labelPath |




## LinkML Source

<details>
```yaml
name: labelPath
description: Dotted path, relative to each nested entry, used as the option's display
  title. Defaults to the entry's own `id` when absent.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: NestedOptionsSource
domain_of:
- NestedOptionsSource
range: string

```
</details></div>