---
search:
  boost: 5.0
---

# Slot: roleId


_The individual acting role this came from, never a team (ADR-0017). Absent on ADMISSION_REFUSED._



<div data-search-exclude markdown="1">



URI: [jumo:roleId](https://jumo.dev/schemas/jumo-v1/roleId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AttentionSource](AttentionSource.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
| Domain Of | [AttentionSource](AttentionSource.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AttentionSource](AttentionSource.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:roleId |
| native | jumo:roleId |




## LinkML Source

<details>
```yaml
name: roleId
description: The individual acting role this came from, never a team (ADR-0017). Absent
  on ADMISSION_REFUSED.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AttentionSource
domain_of:
- AttentionSource
range: Identifier

```
</details></div>