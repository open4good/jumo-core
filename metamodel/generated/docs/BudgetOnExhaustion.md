---
search:
  boost: 2.0
---


# Enum: BudgetOnExhaustion




_DEGRADE_ASSURANCE is deliberately absent: reducing assurance requires an explicit policy decision, not a budget default._



<div data-search-exclude markdown="1">

URI: [jumo:BudgetOnExhaustion](https://jumo.dev/schemas/jumo-v1/BudgetOnExhaustion)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| WAIT_FOR_RECOVERY | None |  |
| USE_AUTHORIZED_ALTERNATIVE | None |  |
| REQUEST_HUMAN_DECISION | None |  |
| STOP_CLEANLY | None |  |













## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: BudgetOnExhaustion
description: 'DEGRADE_ASSURANCE is deliberately absent: reducing assurance requires
  an explicit policy decision, not a budget default.'
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  WAIT_FOR_RECOVERY:
    text: WAIT_FOR_RECOVERY
  USE_AUTHORIZED_ALTERNATIVE:
    text: USE_AUTHORIZED_ALTERNATIVE
  REQUEST_HUMAN_DECISION:
    text: REQUEST_HUMAN_DECISION
  STOP_CLEANLY:
    text: STOP_CLEANLY

```
</details>

</div>