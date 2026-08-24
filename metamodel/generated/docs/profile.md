---
search:
  boost: 5.0
---

# Slot: profile

<div data-search-exclude markdown="1">



URI: [jumo:profile](https://jumo.dev/schemas/jumo-v1/profile)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [SchemaBinding](SchemaBinding.md) | Deterministic link between a payload, its LinkML class, and exact schema dige... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [SchemaProfile](SchemaProfile.md) |
| Domain Of | [SchemaBinding](SchemaBinding.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [SchemaBinding](SchemaBinding.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:profile |
| native | jumo:profile |




## LinkML Source

<details>
```yaml
name: profile
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: SchemaBinding
domain_of:
- SchemaBinding
range: SchemaProfile
required: true

```
</details></div>