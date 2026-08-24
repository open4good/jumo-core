---
search:
  boost: 2.0
---


# Enum: WorkOrderState




_PROPOSED and ACCEPTED are separate because a work order is not an acceptance, in the same way a CapturedInput is not a Commitment._



<div data-search-exclude markdown="1">

URI: [jumo:WorkOrderState](https://jumo.dev/schemas/jumo-v1/WorkOrderState)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| PROPOSED | None |  |
| ACCEPTED | None |  |
| IN_PROGRESS | None |  |
| DECLINED | None |  |
| COMPLETED | None |  |
| FAILED | None |  |













## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: WorkOrderState
description: PROPOSED and ACCEPTED are separate because a work order is not an acceptance,
  in the same way a CapturedInput is not a Commitment.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  PROPOSED:
    text: PROPOSED
  ACCEPTED:
    text: ACCEPTED
  IN_PROGRESS:
    text: IN_PROGRESS
  DECLINED:
    text: DECLINED
  COMPLETED:
    text: COMPLETED
  FAILED:
    text: FAILED

```
</details>

</div>