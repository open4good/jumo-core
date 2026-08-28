---
search:
  boost: 5.0
---

# Slot: ref

<div data-search-exclude markdown="1">



URI: [jumo:ref](https://jumo.dev/schemas/jumo-v1/ref)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [SelectionIntentRationale](SelectionIntentRationale.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [SelectionIntentRationale](SelectionIntentRationale.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [SelectionIntentRationale](SelectionIntentRationale.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:ref |
| native | jumo:ref |




## LinkML Source

<details>
```yaml
name: ref
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: SelectionIntentRationale
domain_of:
- SelectionIntentRationale
range: ContractReference
required: true
inlined: true

```
</details></div>