---
search:
  boost: 5.0
---

# Slot: defaultEffortLadder


_The rung-by-rung ladder every account opened against this platform inherits unless it declares its own ProviderRouting.effortLadder._



<div data-search-exclude markdown="1">



URI: [jumo:defaultEffortLadder](https://jumo.dev/schemas/jumo-v1/defaultEffortLadder)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProviderPlatformSpec](ProviderPlatformSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [EffortRungSpec](EffortRungSpec.md) |
| Domain Of | [ProviderPlatformSpec](ProviderPlatformSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProviderPlatformSpec](ProviderPlatformSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:defaultEffortLadder |
| native | jumo:defaultEffortLadder |




## LinkML Source

<details>
```yaml
name: defaultEffortLadder
description: The rung-by-rung ladder every account opened against this platform inherits
  unless it declares its own ProviderRouting.effortLadder.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProviderPlatformSpec
domain_of:
- ProviderPlatformSpec
range: EffortRungSpec
required: true
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 1

```
</details></div>