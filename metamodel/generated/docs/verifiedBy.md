---
search:
  boost: 5.0
---

# Slot: verifiedBy

<div data-search-exclude markdown="1">



URI: [jumo:verifiedBy](https://jumo.dev/schemas/jumo-v1/verifiedBy)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [KitReleaseCertificationSpec](KitReleaseCertificationSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [KitReleaseCertificationSpec](KitReleaseCertificationSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [KitReleaseCertificationSpec](KitReleaseCertificationSpec.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^.{2,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:verifiedBy |
| native | jumo:verifiedBy |




## LinkML Source

<details>
```yaml
name: verifiedBy
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: KitReleaseCertificationSpec
domain_of:
- KitReleaseCertificationSpec
range: string
required: true
pattern: ^.{2,}$

```
</details></div>