---
search:
  boost: 5.0
---

# Slot: transformationStrategy

<div data-search-exclude markdown="1">



URI: [jumo:transformationStrategy](https://jumo.dev/schemas/jumo-v1/transformationStrategy)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ImportedSchemaCandidate](ImportedSchemaCandidate.md) | Candidate LinkML class proposal derived from an external MCP tool schema |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ImportedSchemaCandidate](ImportedSchemaCandidate.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ImportedSchemaCandidate](ImportedSchemaCandidate.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:transformationStrategy |
| native | jumo:transformationStrategy |




## LinkML Source

<details>
```yaml
name: transformationStrategy
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ImportedSchemaCandidate
domain_of:
- ImportedSchemaCandidate
range: string
required: true

```
</details></div>