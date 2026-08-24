---
search:
  boost: 5.0
---

# Slot: statusCode

<div data-search-exclude markdown="1">



URI: [jumo:statusCode](https://jumo.dev/schemas/jumo-v1/statusCode)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ApiResponseBinding](ApiResponseBinding.md) | Response schema binding for a specific HTTP status code |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Integer](Integer.md) |
| Domain Of | [ApiResponseBinding](ApiResponseBinding.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ApiResponseBinding](ApiResponseBinding.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:statusCode |
| native | jumo:statusCode |




## LinkML Source

<details>
```yaml
name: statusCode
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ApiResponseBinding
domain_of:
- ApiResponseBinding
range: integer
required: true

```
</details></div>