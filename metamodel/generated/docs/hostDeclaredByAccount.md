---
search:
  boost: 5.0
---

# Slot: hostDeclaredByAccount


_True only for a generic platform (e.g. an OpenAI-compatible aggregator such as OpenRouter) whose upstream host is named per-account instead of fixed by this catalog entry._



<div data-search-exclude markdown="1">



URI: [jumo:hostDeclaredByAccount](https://jumo.dev/schemas/jumo-v1/hostDeclaredByAccount)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProviderPlatformSpec](ProviderPlatformSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Boolean](Boolean.md) |
| Domain Of | [ProviderPlatformSpec](ProviderPlatformSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
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
| self | jumo:hostDeclaredByAccount |
| native | jumo:hostDeclaredByAccount |




## LinkML Source

<details>
```yaml
name: hostDeclaredByAccount
description: True only for a generic platform (e.g. an OpenAI-compatible aggregator
  such as OpenRouter) whose upstream host is named per-account instead of fixed by
  this catalog entry.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProviderPlatformSpec
domain_of:
- ProviderPlatformSpec
range: boolean
required: true

```
</details></div>