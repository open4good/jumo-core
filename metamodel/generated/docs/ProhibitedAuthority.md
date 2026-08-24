---
search:
  boost: 2.0
---


# Enum: ProhibitedAuthority




_Explicit denials that no policy may override._



<div data-search-exclude markdown="1">

URI: [jumo:ProhibitedAuthority](https://jumo.dev/schemas/jumo-v1/ProhibitedAuthority)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| self_grant_capability | None |  |
| bypass_policy | None |  |
| infer_transitive_access | None |  |
| self_approve_privilege_change | None |  |
| modify_root_of_trust | None |  |
| act_as_super_administrator | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [prohibitedAuthority](prohibitedAuthority.md) |  |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: ProhibitedAuthority
description: Explicit denials that no policy may override.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  self_grant_capability:
    text: self_grant_capability
  bypass_policy:
    text: bypass_policy
  infer_transitive_access:
    text: infer_transitive_access
  self_approve_privilege_change:
    text: self_approve_privilege_change
  modify_root_of_trust:
    text: modify_root_of_trust
  act_as_super_administrator:
    text: act_as_super_administrator

```
</details>

</div>