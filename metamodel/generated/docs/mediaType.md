---
search:
  boost: 5.0
---

# Slot: mediaType

<div data-search-exclude markdown="1">



URI: [jumo:mediaType](https://jumo.dev/schemas/jumo-v1/mediaType)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ApiResponseBinding](ApiResponseBinding.md) | Response schema binding for a specific HTTP status code |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
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
| self | jumo:mediaType |
| native | jumo:mediaType |




## LinkML Source

<details>
```yaml
name: mediaType
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ApiResponseBinding
domain_of:
- ApiResponseBinding
range: string
required: true

```
</details></div>