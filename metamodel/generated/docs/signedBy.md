---
search:
  boost: 5.0
---

# Slot: signedBy

<div data-search-exclude markdown="1">



URI: [jumo:signedBy](https://jumo.dev/schemas/jumo-v1/signedBy)
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
| self | jumo:signedBy |
| native | jumo:signedBy |




## LinkML Source

<details>
```yaml
name: signedBy
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