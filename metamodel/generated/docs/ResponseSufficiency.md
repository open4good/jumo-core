---
search:
  boost: 2.0
---


# Enum: ResponseSufficiency




_A worker's own structured signal about whether its answer, as given, is sufficient (worker-sufficiency-bounded-escalation AC1). Reported only when the declaring WorkerRequirementProfile's interaction.structuredOutput is REQUIRED._



<div data-search-exclude markdown="1">

URI: [jumo:ResponseSufficiency](https://jumo.dev/schemas/jumo-v1/ResponseSufficiency)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| SUFFICIENT | None |  |
| INSUFFICIENT_NEEDS_DEPTH | None |  |













## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: ResponseSufficiency
description: A worker's own structured signal about whether its answer, as given,
  is sufficient (worker-sufficiency-bounded-escalation AC1). Reported only when the
  declaring WorkerRequirementProfile's interaction.structuredOutput is REQUIRED.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  SUFFICIENT:
    text: SUFFICIENT
  INSUFFICIENT_NEEDS_DEPTH:
    text: INSUFFICIENT_NEEDS_DEPTH

```
</details>

</div>