---
search:
  boost: 2.0
---


# Enum: IndependentVerificationState




_ADVISORY means no automated check confirms a WorkOrder's producer and verifier are distinct actors in this realm. A declaration is not a control -- it is a claim the owner makes, and ENFORCED costs an observation and a reference to it, same as BranchProtectionState._



<div data-search-exclude markdown="1">

URI: [jumo:IndependentVerificationState](https://jumo.dev/schemas/jumo-v1/IndependentVerificationState)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| ADVISORY | None |  |
| ENFORCED | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [independentVerification](independentVerification.md) | Optional, additive claim distinct from branchProtection |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: IndependentVerificationState
description: ADVISORY means no automated check confirms a WorkOrder's producer and
  verifier are distinct actors in this realm. A declaration is not a control -- it
  is a claim the owner makes, and ENFORCED costs an observation and a reference to
  it, same as BranchProtectionState.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  ADVISORY:
    text: ADVISORY
  ENFORCED:
    text: ENFORCED

```
</details>

</div>