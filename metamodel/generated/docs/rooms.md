---
search:
  boost: 5.0
---

# Slot: rooms


_Illustrated room decor keyed by surface id (ADR-0087). A missing entry renders the classic view rather than failing._



<div data-search-exclude markdown="1">



URI: [jumo:rooms](https://jumo.dev/schemas/jumo-v1/rooms)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ThemeVisualization](ThemeVisualization.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ThemeRoom](ThemeRoom.md) |
| Domain Of | [ThemeVisualization](ThemeVisualization.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ThemeVisualization](ThemeVisualization.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:rooms |
| native | jumo:rooms |




## LinkML Source

<details>
```yaml
name: rooms
description: Illustrated room decor keyed by surface id (ADR-0087). A missing entry
  renders the classic view rather than failing.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ThemeVisualization
domain_of:
- ThemeVisualization
range: ThemeRoom
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>