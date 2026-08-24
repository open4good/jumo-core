---
search:
  boost: 5.0
---

# Slot: instance

<div data-search-exclude markdown="1">



URI: [jumo:instance](https://jumo.dev/schemas/jumo-v1/instance)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ApiProblem](ApiProblem.md) | RFC 9457 compliant problem details model for API errors without unconstrained... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ApiProblem](ApiProblem.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ApiProblem](ApiProblem.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:instance |
| native | jumo:instance |




## LinkML Source

<details>
```yaml
name: instance
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ApiProblem
domain_of:
- ApiProblem
range: string

```
</details></div>