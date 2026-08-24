---
search:
  boost: 2.0
---


# Enum: ForbiddenSolicitationReach




_Delegation is never transitive. A grant to A does not let A pass it to B._



<div data-search-exclude markdown="1">

URI: [jumo:ForbiddenSolicitationReach](https://jumo.dev/schemas/jumo-v1/ForbiddenSolicitationReach)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| raw_memory_access | None |  |
| secret_access | None |  |
| transitive_capability_use | None |  |
| policy_inspection | None |  |
| cross_realm_identity_resolution | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [forbidden](forbidden.md) |  |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: ForbiddenSolicitationReach
description: Delegation is never transitive. A grant to A does not let A pass it to
  B.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  raw_memory_access:
    text: raw_memory_access
  secret_access:
    text: secret_access
  transitive_capability_use:
    text: transitive_capability_use
  policy_inspection:
    text: policy_inspection
  cross_realm_identity_resolution:
    text: cross_realm_identity_resolution

```
</details>

</div>