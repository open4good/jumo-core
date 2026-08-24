---
search:
  boost: 5.0
---

# Slot: businessState

<div data-search-exclude markdown="1">



URI: [jumo:businessState](https://jumo.dev/schemas/jumo-v1/businessState)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProjectStateAuthority](ProjectStateAuthority.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [BusinessStateStore](BusinessStateStore.md) |
| Domain Of | [ProjectStateAuthority](ProjectStateAuthority.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProjectStateAuthority](ProjectStateAuthority.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:businessState |
| native | jumo:businessState |




## LinkML Source

<details>
```yaml
name: businessState
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProjectStateAuthority
domain_of:
- ProjectStateAuthority
range: BusinessStateStore
required: true

```
</details></div>