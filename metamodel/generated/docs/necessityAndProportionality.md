---
search:
  boost: 5.0
---

# Slot: necessityAndProportionality

<div data-search-exclude markdown="1">



URI: [jumo:necessityAndProportionality](https://jumo.dev/schemas/jumo-v1/necessityAndProportionality)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [DataProtectionImpactAssessment](DataProtectionImpactAssessment.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [DataProtectionImpactAssessment](DataProtectionImpactAssessment.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [DataProtectionImpactAssessment](DataProtectionImpactAssessment.md) |


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
| self | jumo:necessityAndProportionality |
| native | jumo:necessityAndProportionality |




## LinkML Source

<details>
```yaml
name: necessityAndProportionality
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: DataProtectionImpactAssessment
domain_of:
- DataProtectionImpactAssessment
range: string
pattern: ^.{10,}$

```
</details></div>