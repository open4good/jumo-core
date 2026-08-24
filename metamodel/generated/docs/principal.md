---
search:
  boost: 5.0
---

# Slot: principal

<div data-search-exclude markdown="1">



URI: [jumo:principal](https://jumo.dev/schemas/jumo-v1/principal)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [PolicyInput](PolicyInput.md) | Typed input structure evaluated by OPA policies |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [PolicyInput](PolicyInput.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [PolicyInput](PolicyInput.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:principal |
| native | jumo:principal |




## LinkML Source

<details>
```yaml
name: principal
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: PolicyInput
domain_of:
- PolicyInput
range: string
required: true

```
</details></div>