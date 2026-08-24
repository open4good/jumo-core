---
search:
  boost: 5.0
---

# Slot: values

<div data-search-exclude markdown="1">



URI: [jumo:values](https://jumo.dev/schemas/jumo-v1/values)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [KitBindingSpec](KitBindingSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [KitBindingValue](KitBindingValue.md) |
| Domain Of | [KitBindingSpec](KitBindingSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
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
| self | jumo:values |
| native | jumo:values |




## LinkML Source

<details>
```yaml
name: values
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: KitBindingSpec
domain_of:
- KitBindingSpec
range: KitBindingValue
required: true
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 1

```
</details></div>