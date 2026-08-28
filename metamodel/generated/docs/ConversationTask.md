---
search:
  boost: 2.0
---


# Enum: ConversationTask




_The closed set of ConversationService turn kinds. Declared on the PromptTemplate that serves it, so the platform resolves task -> prompt from the contract instead of naming the PromptTemplate id in a switch._



<div data-search-exclude markdown="1">

URI: [jumo:ConversationTask](https://jumo.dev/schemas/jumo-v1/ConversationTask)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| COORDINATE | None |  |
| DELIBERATE | None |  |
| COMPACT | None |  |
| STRUCTURED_INTENT | None |  |
| INTAKE | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [conversationTask](conversationTask.md) | The ConversationService task this prompt serves |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: ConversationTask
description: The closed set of ConversationService turn kinds. Declared on the PromptTemplate
  that serves it, so the platform resolves task -> prompt from the contract instead
  of naming the PromptTemplate id in a switch.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  COORDINATE:
    text: COORDINATE
  DELIBERATE:
    text: DELIBERATE
  COMPACT:
    text: COMPACT
  STRUCTURED_INTENT:
    text: STRUCTURED_INTENT
  INTAKE:
    text: INTAKE

```
</details>

</div>