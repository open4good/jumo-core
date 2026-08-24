---
search:
  boost: 5.0
---

# Slot: controls

<div data-search-exclude markdown="1">



URI: [jumo:controls](https://jumo.dev/schemas/jumo-v1/controls)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ControlCatalogSpec](ControlCatalogSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Control](Control.md) |
| Domain Of | [ControlCatalogSpec](ControlCatalogSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ControlCatalogSpec](ControlCatalogSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:controls |
| native | jumo:controls |




## LinkML Source

<details>
```yaml
name: controls
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ControlCatalogSpec
domain_of:
- ControlCatalogSpec
range: Control
required: true
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 1

```
</details></div>