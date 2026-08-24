---
search:
  boost: 2.0
---


# Enum: SharedRepositoryApprovalPolicy




_Who must approve a forge-write against a shared repository binding. OWNER_ONLY applies when a single Realm owns the binding. MUTUAL_CONSENT blocks merge until all co-owner Realms have acknowledged._



<div data-search-exclude markdown="1">

URI: [jumo:SharedRepositoryApprovalPolicy](https://jumo.dev/schemas/jumo-v1/SharedRepositoryApprovalPolicy)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| OWNER_ONLY | None |  |
| MUTUAL_CONSENT | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [approvalPolicy](approvalPolicy.md) | OWNER_ONLY (default): only the ownerRealm may authorize forge writes |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: SharedRepositoryApprovalPolicy
description: Who must approve a forge-write against a shared repository binding. OWNER_ONLY
  applies when a single Realm owns the binding. MUTUAL_CONSENT blocks merge until
  all co-owner Realms have acknowledged.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  OWNER_ONLY:
    text: OWNER_ONLY
  MUTUAL_CONSENT:
    text: MUTUAL_CONSENT

```
</details>

</div>