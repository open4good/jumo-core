---
search:
  boost: 2.0
---


# Enum: EffectRecoveryKind




_Replaces the source schemas' `reversible: boolean`: compensation is application-specific and can itself fail, so a single boolean does not say which of these applies (docs/concepts/positionnement-conceptuel.md#sagas-et-recuperation)._



<div data-search-exclude markdown="1">

URI: [jumo:EffectRecoveryKind](https://jumo.dev/schemas/jumo-v1/EffectRecoveryKind)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| RETRY | None |  |
| DEDUPLICATION | None |  |
| COMPENSATION | None |  |
| CORRECTION | None |  |
| RECONCILIATION | None |  |
| EXPIRY_WINDOW | None |  |
| RESIDUAL_HARM | None |  |













## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: EffectRecoveryKind
description: 'Replaces the source schemas'' `reversible: boolean`: compensation is
  application-specific and can itself fail, so a single boolean does not say which
  of these applies (docs/concepts/positionnement-conceptuel.md#sagas-et-recuperation).'
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  RETRY:
    text: RETRY
  DEDUPLICATION:
    text: DEDUPLICATION
  COMPENSATION:
    text: COMPENSATION
  CORRECTION:
    text: CORRECTION
  RECONCILIATION:
    text: RECONCILIATION
  EXPIRY_WINDOW:
    text: EXPIRY_WINDOW
  RESIDUAL_HARM:
    text: RESIDUAL_HARM

```
</details>

</div>