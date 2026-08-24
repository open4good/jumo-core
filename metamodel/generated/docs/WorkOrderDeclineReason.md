---
search:
  boost: 2.0
---


# Enum: WorkOrderDeclineReason



<div data-search-exclude markdown="1">

URI: [jumo:WorkOrderDeclineReason](https://jumo.dev/schemas/jumo-v1/WorkOrderDeclineReason)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| OUT_OF_SCOPE | None |  |
| NO_CAPABILITY | None |  |
| OVER_BUDGET | None |  |
| CONFLICTING_COMMITMENT | None |  |
| AMBIGUOUS | None |  |
| SUPERSEDED | None | Absorbed into another WorkOrder that carries the same acceptance criteria for... |




## Slots

| Name | Description |
| ---  | --- |
| [declineReason](declineReason.md) |  |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: WorkOrderDeclineReason
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  OUT_OF_SCOPE:
    text: OUT_OF_SCOPE
  NO_CAPABILITY:
    text: NO_CAPABILITY
  OVER_BUDGET:
    text: OVER_BUDGET
  CONFLICTING_COMMITMENT:
    text: CONFLICTING_COMMITMENT
  AMBIGUOUS:
    text: AMBIGUOUS
  SUPERSEDED:
    text: SUPERSEDED
    description: Absorbed into another WorkOrder that carries the same acceptance
      criteria forward.

```
</details>

</div>