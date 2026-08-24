---
search:
  boost: 5.0
---

# Slot: schemaBinding

<div data-search-exclude markdown="1">



URI: [jumo:schemaBinding](https://jumo.dev/schemas/jumo-v1/schemaBinding)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [SchemaBoundPayload](SchemaBoundPayload.md) | Bounded dynamic JSON payload guaranteed by a validated SchemaBinding |  no  |
| [ApiResponseBinding](ApiResponseBinding.md) | Response schema binding for a specific HTTP status code |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [SchemaBoundPayload](SchemaBoundPayload.md), [ApiResponseBinding](ApiResponseBinding.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:schemaBinding |
| native | jumo:schemaBinding |




## LinkML Source

<details>
```yaml
name: schemaBinding
domain_of:
- SchemaBoundPayload
- ApiResponseBinding
range: string

```
</details></div>