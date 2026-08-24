---
search:
  boost: 5.0
---

# Slot: output

<div data-search-exclude markdown="1">



URI: [jumo:output](https://jumo.dev/schemas/jumo-v1/output)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [PromptTemplateSpec](PromptTemplateSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [PromptOutput](PromptOutput.md) |
| Domain Of | [PromptTemplateSpec](PromptTemplateSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [PromptTemplateSpec](PromptTemplateSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:output |
| native | jumo:output |




## LinkML Source

<details>
```yaml
name: output
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: PromptTemplateSpec
domain_of:
- PromptTemplateSpec
range: PromptOutput
required: true
inlined: true

```
</details></div>