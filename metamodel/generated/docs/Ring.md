---
search:
  boost: 2.0
---


# Enum: Ring




_Self-modification ring (ADR-0008). Ring 0 is never an ordinary change target._



<div data-search-exclude markdown="1">

URI: [jumo:Ring](https://jumo.dev/schemas/jumo-v1/Ring)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| RING_0_ROOT_OF_TRUST | None |  |
| RING_1_CONTROL_PLANE | None |  |
| RING_2_AGENT_BEHAVIOR | None |  |
| RING_3_GOVERNED_PROJECT | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [modificationRing](modificationRing.md) |  |
| [maxRing](maxRing.md) |  |
| [ring](ring.md) | The ring this work acts on |
| [ringCeiling](ringCeiling.md) | Highest-blast-radius ring this capability may ever act on |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: Ring
description: Self-modification ring (ADR-0008). Ring 0 is never an ordinary change
  target.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  RING_0_ROOT_OF_TRUST:
    text: RING_0_ROOT_OF_TRUST
  RING_1_CONTROL_PLANE:
    text: RING_1_CONTROL_PLANE
  RING_2_AGENT_BEHAVIOR:
    text: RING_2_AGENT_BEHAVIOR
  RING_3_GOVERNED_PROJECT:
    text: RING_3_GOVERNED_PROJECT

```
</details>

</div>