---
search:
  boost: 5.0
---

# Slot: responseBindings

<div data-search-exclude markdown="1">



URI: [jumo:responseBindings](https://jumo.dev/schemas/jumo-v1/responseBindings)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ApiOperation](ApiOperation.md) | Typed operation declaration in an API surface contract |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ApiResponseBinding](ApiResponseBinding.md) |
| Domain Of | [ApiOperation](ApiOperation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ApiOperation](ApiOperation.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:responseBindings |
| native | jumo:responseBindings |




## LinkML Source

<details>
```yaml
name: responseBindings
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ApiOperation
domain_of:
- ApiOperation
range: ApiResponseBinding
multivalued: true
inlined: true

```
</details></div>