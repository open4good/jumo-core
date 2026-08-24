---
search:
  boost: 5.0
---

# Slot: maxOutputTokens

<div data-search-exclude markdown="1">



URI: [jumo:maxOutputTokens](https://jumo.dev/schemas/jumo-v1/maxOutputTokens)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProviderNativeEffort](ProviderNativeEffort.md) | Provider-native reasoning-effort parameters, applied verbatim by RequestShape... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Integer](Integer.md) |
| Domain Of | [ProviderNativeEffort](ProviderNativeEffort.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProviderNativeEffort](ProviderNativeEffort.md) |


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
| self | jumo:maxOutputTokens |
| native | jumo:maxOutputTokens |




## LinkML Source

<details>
```yaml
name: maxOutputTokens
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProviderNativeEffort
domain_of:
- ProviderNativeEffort
range: integer
minimum_value: 1

```
</details></div>