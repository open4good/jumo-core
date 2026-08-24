---
search:
  boost: 5.0
---

# Slot: evidenceType

<div data-search-exclude markdown="1">



URI: [jumo:evidenceType](https://jumo.dev/schemas/jumo-v1/evidenceType)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [EvidenceProfileSpec](EvidenceProfileSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [EvidenceProfileSpec](EvidenceProfileSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [EvidenceProfileSpec](EvidenceProfileSpec.md) |


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
| self | jumo:evidenceType |
| native | jumo:evidenceType |




## LinkML Source

<details>
```yaml
name: evidenceType
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: EvidenceProfileSpec
domain_of:
- EvidenceProfileSpec
range: string
required: true
pattern: ^.{2,}$

```
</details></div>