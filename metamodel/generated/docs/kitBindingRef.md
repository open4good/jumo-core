---
search:
  boost: 5.0
---

# Slot: kitBindingRef

<div data-search-exclude markdown="1">



URI: [jumo:kitBindingRef](https://jumo.dev/schemas/jumo-v1/kitBindingRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [KitLockSpec](KitLockSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [KitLockSpec](KitLockSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [KitLockSpec](KitLockSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:kitBindingRef |
| native | jumo:kitBindingRef |




## LinkML Source

<details>
```yaml
name: kitBindingRef
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: KitLockSpec
domain_of:
- KitLockSpec
range: ContractReference
required: true
inlined: true

```
</details></div>