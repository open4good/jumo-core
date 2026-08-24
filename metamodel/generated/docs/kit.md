---
search:
  boost: 5.0
---

# Slot: kit

<div data-search-exclude markdown="1">



URI: [jumo:kit](https://jumo.dev/schemas/jumo-v1/kit)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [KitBindingSpec](KitBindingSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [KitReference](KitReference.md) |
| Domain Of | [KitBindingSpec](KitBindingSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [KitBindingSpec](KitBindingSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:kit |
| native | jumo:kit |




## LinkML Source

<details>
```yaml
name: kit
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: KitBindingSpec
domain_of:
- KitBindingSpec
range: KitReference
required: true
inlined: true

```
</details></div>