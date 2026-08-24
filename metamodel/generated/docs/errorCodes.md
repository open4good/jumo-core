---
search:
  boost: 5.0
---

# Slot: errorCodes

<div data-search-exclude markdown="1">



URI: [jumo:errorCodes](https://jumo.dev/schemas/jumo-v1/errorCodes)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ApiOperation](ApiOperation.md) | Typed operation declaration in an API surface contract |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
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
| self | jumo:errorCodes |
| native | jumo:errorCodes |




## LinkML Source

<details>
```yaml
name: errorCodes
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ApiOperation
domain_of:
- ApiOperation
range: string
multivalued: true

```
</details></div>