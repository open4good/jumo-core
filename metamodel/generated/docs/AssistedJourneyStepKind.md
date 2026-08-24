---
search:
  boost: 2.0
---


# Enum: AssistedJourneyStepKind




_The IHM-layer counterpart to ProcessStepKind (execution.yaml): AssistedJourney is a human-facing collection graph, while ProcessSpec remains the durable execution graph._



<div data-search-exclude markdown="1">

URI: [jumo:AssistedJourneyStepKind](https://jumo.dev/schemas/jumo-v1/AssistedJourneyStepKind)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| COLLECT | None |  |
| AWAIT | None |  |
| CONFIRM | None |  |
| DIALOGUE_COLLECT | None |  |
| SUB_JOURNEY | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [stepKind](stepKind.md) | Required from the model-driven renderer onward (Rego) |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: AssistedJourneyStepKind
description: 'The IHM-layer counterpart to ProcessStepKind (execution.yaml): AssistedJourney
  is a human-facing collection graph, while ProcessSpec remains the durable execution
  graph.'
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  COLLECT:
    text: COLLECT
  AWAIT:
    text: AWAIT
  CONFIRM:
    text: CONFIRM
  DIALOGUE_COLLECT:
    text: DIALOGUE_COLLECT
  SUB_JOURNEY:
    text: SUB_JOURNEY

```
</details>

</div>