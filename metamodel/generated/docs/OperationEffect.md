---
search:
  boost: 2.0
---


# Enum: OperationEffect




_SYSTEM_EFFECT is the recovery-gated root system-effect branch (ADR-0056); an ENABLED bundle operation with this effect requires recoveryPlanDigest and killSwitchRef -- enforced in Rego, not schema._



<div data-search-exclude markdown="1">

URI: [jumo:OperationEffect](https://jumo.dev/schemas/jumo-v1/OperationEffect)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| READ_ONLY | None |  |
| EXTERNAL_EFFECT | None |  |
| SYSTEM_EFFECT | None |  |













## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: OperationEffect
description: SYSTEM_EFFECT is the recovery-gated root system-effect branch (ADR-0056);
  an ENABLED bundle operation with this effect requires recoveryPlanDigest and killSwitchRef
  -- enforced in Rego, not schema.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  READ_ONLY:
    text: READ_ONLY
  EXTERNAL_EFFECT:
    text: EXTERNAL_EFFECT
  SYSTEM_EFFECT:
    text: SYSTEM_EFFECT

```
</details>

</div>