---
search:
  boost: 5.0
---

# Slot: qualification

<div data-search-exclude markdown="1">



URI: [jumo:qualification](https://jumo.dev/schemas/jumo-v1/qualification)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [CliToolDefinitionSpec](CliToolDefinitionSpec.md) | Specification for a CliToolDefinition contract |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [CliQualification](CliQualification.md) |
| Domain Of | [CliToolDefinitionSpec](CliToolDefinitionSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [CliToolDefinitionSpec](CliToolDefinitionSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:qualification |
| native | jumo:qualification |




## LinkML Source

<details>
```yaml
name: qualification
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: CliToolDefinitionSpec
domain_of:
- CliToolDefinitionSpec
range: CliQualification
required: true

```
</details></div>