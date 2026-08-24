---
search:
  boost: 5.0
---

# Slot: frameworkName

<div data-search-exclude markdown="1">



URI: [jumo:frameworkName](https://jumo.dev/schemas/jumo-v1/frameworkName)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ComplianceProfileSpec](ComplianceProfileSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ComplianceProfileSpec](ComplianceProfileSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ComplianceProfileSpec](ComplianceProfileSpec.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^.{3,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:frameworkName |
| native | jumo:frameworkName |




## LinkML Source

<details>
```yaml
name: frameworkName
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ComplianceProfileSpec
domain_of:
- ComplianceProfileSpec
range: string
required: true
pattern: ^.{3,}$

```
</details></div>