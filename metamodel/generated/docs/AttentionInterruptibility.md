---
search:
  boost: 2.0
---


# Enum: AttentionInterruptibility




_Ordered least to most intrusive. Separate from urgency on purpose: a critical item can still belong in the morning digest, and conflating the two is how everything urgent becomes an interruption._



<div data-search-exclude markdown="1">

URI: [jumo:AttentionInterruptibility](https://jumo.dev/schemas/jumo-v1/AttentionInterruptibility)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| DEFER_TO_DIGEST | None |  |
| MAY_INTERRUPT | None |  |
| QUIET_HOURS_EXEMPT | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [interruptibility](interruptibility.md) |  |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: AttentionInterruptibility
description: 'Ordered least to most intrusive. Separate from urgency on purpose: a
  critical item can still belong in the morning digest, and conflating the two is
  how everything urgent becomes an interruption.'
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  DEFER_TO_DIGEST:
    text: DEFER_TO_DIGEST
  MAY_INTERRUPT:
    text: MAY_INTERRUPT
  QUIET_HOURS_EXEMPT:
    text: QUIET_HOURS_EXEMPT

```
</details>

</div>