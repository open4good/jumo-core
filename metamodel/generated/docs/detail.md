---
search:
  boost: 5.0
---

# Slot: detail

<div data-search-exclude markdown="1">



URI: [jumo:detail](https://jumo.dev/schemas/jumo-v1/detail)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [EntityFacet](EntityFacet.md) |  |  no  |
| [ApiProblem](ApiProblem.md) | RFC 9457 compliant problem details model for API errors without unconstrained... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [EntityFacet](EntityFacet.md), [ApiProblem](ApiProblem.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:detail |
| native | jumo:detail |




## LinkML Source

<details>
```yaml
name: detail
domain_of:
- EntityFacet
- ApiProblem
range: string

```
</details></div>