---
search:
  boost: 2.0
---


# Enum: SufficiencyEscalationPolicy




_A profile's disposition on an INSUFFICIENT_NEEDS_DEPTH signal (ADR-0019). NONE is the default: no automatic retry, the existing human-decision path applies. AUTO_BOUNDED retries the same invocation once at the next effort rung, never above the ladder's own ceiling and only while the declared ResourceBudget still has model-call budget for it -- otherwise it falls back to the same human-decision path as NONE._



<div data-search-exclude markdown="1">

URI: [jumo:SufficiencyEscalationPolicy](https://jumo.dev/schemas/jumo-v1/SufficiencyEscalationPolicy)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| NONE | None |  |
| AUTO_BOUNDED | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [onInsufficiency](onInsufficiency.md) | How this profile responds to its own worker's INSUFFICIENT_NEEDS_DEPTH signal... |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: SufficiencyEscalationPolicy
description: 'A profile''s disposition on an INSUFFICIENT_NEEDS_DEPTH signal (ADR-0019).
  NONE is the default: no automatic retry, the existing human-decision path applies.
  AUTO_BOUNDED retries the same invocation once at the next effort rung, never above
  the ladder''s own ceiling and only while the declared ResourceBudget still has model-call
  budget for it -- otherwise it falls back to the same human-decision path as NONE.'
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  NONE:
    text: NONE
  AUTO_BOUNDED:
    text: AUTO_BOUNDED

```
</details>

</div>