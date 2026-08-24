---
search:
  boost: 5.0
---

# Slot: narrationPromptTemplateRef


_Optional PromptTemplate that phrases the extracted facts._



<div data-search-exclude markdown="1">



URI: [jumo:narrationPromptTemplateRef](https://jumo.dev/schemas/jumo-v1/narrationPromptTemplateRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [SelfDescriptionAnswer](SelfDescriptionAnswer.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [SelfDescriptionAnswer](SelfDescriptionAnswer.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [SelfDescriptionAnswer](SelfDescriptionAnswer.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:narrationPromptTemplateRef |
| native | jumo:narrationPromptTemplateRef |




## LinkML Source

<details>
```yaml
name: narrationPromptTemplateRef
description: Optional PromptTemplate that phrases the extracted facts.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: SelfDescriptionAnswer
domain_of:
- SelfDescriptionAnswer
range: ContractReference
inlined: true

```
</details></div>