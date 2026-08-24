---
search:
  boost: 5.0
---

# Slot: palette

<div data-search-exclude markdown="1">



URI: [jumo:palette](https://jumo.dev/schemas/jumo-v1/palette)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ThemeVisualization](ThemeVisualization.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ThemeVisualization](ThemeVisualization.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ThemeVisualization](ThemeVisualization.md) |


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
| self | jumo:palette |
| native | jumo:palette |




## LinkML Source

<details>
```yaml
name: palette
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ThemeVisualization
domain_of:
- ThemeVisualization
range: string
pattern: ^.{3,}$

```
</details></div>