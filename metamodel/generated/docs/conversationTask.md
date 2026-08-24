---
search:
  boost: 5.0
---

# Slot: conversationTask


_The ConversationService task this prompt serves. Optional -- most PromptTemplate documents are referenced by a journey step, not by a conversation task, and leave this unset._



<div data-search-exclude markdown="1">



URI: [jumo:conversationTask](https://jumo.dev/schemas/jumo-v1/conversationTask)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [PromptTemplateSpec](PromptTemplateSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ConversationTask](ConversationTask.md) |
| Domain Of | [PromptTemplateSpec](PromptTemplateSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
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
| self | jumo:conversationTask |
| native | jumo:conversationTask |




## LinkML Source

<details>
```yaml
name: conversationTask
description: The ConversationService task this prompt serves. Optional -- most PromptTemplate
  documents are referenced by a journey step, not by a conversation task, and leave
  this unset.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: PromptTemplateSpec
domain_of:
- PromptTemplateSpec
range: ConversationTask

```
</details></div>