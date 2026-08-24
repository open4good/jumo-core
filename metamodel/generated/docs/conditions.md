---
search:
  boost: 5.0
---

# Slot: conditions


_Required and non-empty under ACCEPTED_WITH_CONDITIONS (Rego)._



<div data-search-exclude markdown="1">



URI: [jumo:conditions](https://jumo.dev/schemas/jumo-v1/conditions)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConnectorAppraisalSpec](ConnectorAppraisalSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ConnectorAppraisalSpec](ConnectorAppraisalSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ConnectorAppraisalSpec](ConnectorAppraisalSpec.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^.{10,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:conditions |
| native | jumo:conditions |




## LinkML Source

<details>
```yaml
name: conditions
description: Required and non-empty under ACCEPTED_WITH_CONDITIONS (Rego).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ConnectorAppraisalSpec
domain_of:
- ConnectorAppraisalSpec
range: string
multivalued: true
pattern: ^.{10,}$

```
</details></div>