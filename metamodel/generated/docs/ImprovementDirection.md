---
search:
  boost: 2.0
---


# Enum: ImprovementDirection




_Required so the loop's effect on corpus size is visible per recommendation. CONSOLIDATE and DELETE exist because an additions-only loop is the failure mode check-corpus-budget.py bounds._



<div data-search-exclude markdown="1">

URI: [jumo:ImprovementDirection](https://jumo.dev/schemas/jumo-v1/ImprovementDirection)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| ADD | None |  |
| CONSOLIDATE | None |  |
| CORRECT | None |  |
| DELETE | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [direction](direction.md) |  |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: ImprovementDirection
description: Required so the loop's effect on corpus size is visible per recommendation.
  CONSOLIDATE and DELETE exist because an additions-only loop is the failure mode
  check-corpus-budget.py bounds.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  ADD:
    text: ADD
  CONSOLIDATE:
    text: CONSOLIDATE
  CORRECT:
    text: CORRECT
  DELETE:
    text: DELETE

```
</details>

</div>