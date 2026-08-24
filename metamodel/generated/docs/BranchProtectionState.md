---
search:
  boost: 2.0
---


# Enum: BranchProtectionState




_ADVISORY means the Forge does not prevent a direct push, a force-push or a self-approved merge. A declaration is not a control -- it is a claim the owner makes._



<div data-search-exclude markdown="1">

URI: [jumo:BranchProtectionState](https://jumo.dev/schemas/jumo-v1/BranchProtectionState)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| ADVISORY | None |  |
| ENFORCED | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [branchProtection](branchProtection.md) |  |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: BranchProtectionState
description: ADVISORY means the Forge does not prevent a direct push, a force-push
  or a self-approved merge. A declaration is not a control -- it is a claim the owner
  makes.
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