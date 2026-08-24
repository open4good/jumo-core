---
search:
  boost: 5.0
---

# Slot: priority


_Deterministic account selection order for a compatible worker requirement profile. Lower values are selected first._



<div data-search-exclude markdown="1">



URI: [jumo:priority](https://jumo.dev/schemas/jumo-v1/priority)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProviderRouting](ProviderRouting.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Integer](Integer.md) |
| Domain Of | [ProviderRouting](ProviderRouting.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProviderRouting](ProviderRouting.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Minimum Value | 1 |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:priority |
| native | jumo:priority |




## LinkML Source

<details>
```yaml
name: priority
description: Deterministic account selection order for a compatible worker requirement
  profile. Lower values are selected first.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProviderRouting
domain_of:
- ProviderRouting
range: integer
minimum_value: 1

```
</details></div>