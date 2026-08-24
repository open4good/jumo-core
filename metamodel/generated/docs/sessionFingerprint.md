---
search:
  boost: 5.0
---

# Slot: sessionFingerprint

<div data-search-exclude markdown="1">



URI: [jumo:sessionFingerprint](https://jumo.dev/schemas/jumo-v1/sessionFingerprint)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProviderSessionBinding](ProviderSessionBinding.md) | Recognized opaque binding between a holder provider session and one Execution... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ProviderSessionBinding](ProviderSessionBinding.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProviderSessionBinding](ProviderSessionBinding.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^sha256:[0-9a-f]{64}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:sessionFingerprint |
| native | jumo:sessionFingerprint |




## LinkML Source

<details>
```yaml
name: sessionFingerprint
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProviderSessionBinding
domain_of:
- ProviderSessionBinding
range: string
required: true
pattern: ^sha256:[0-9a-f]{64}$

```
</details></div>