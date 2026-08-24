---
search:
  boost: 5.0
---

# Slot: schemaDigest

<div data-search-exclude markdown="1">



URI: [jumo:schemaDigest](https://jumo.dev/schemas/jumo-v1/schemaDigest)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [SchemaBinding](SchemaBinding.md) | Deterministic link between a payload, its LinkML class, and exact schema dige... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
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
| self | jumo:schemaDigest |
| native | jumo:schemaDigest |




## LinkML Source

<details>
```yaml
name: schemaDigest
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: SchemaBinding
domain_of:
- SchemaBinding
range: string
required: true

```
</details></div>