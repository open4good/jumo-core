---
search:
  boost: 2.0
---


# Enum: OrganizationRole




_Governance role in an Organization tenant. It is deliberately distinct from a RoleDefinition: organization membership coordinates contracts and audit only and never grants a Realm's data, secret, execution-cell, or effect authority._



<div data-search-exclude markdown="1">

URI: [jumo:OrganizationRole](https://jumo.dev/schemas/jumo-v1/OrganizationRole)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| OWNER | None |  |
| ADMIN | None |  |
| MEMBER | None |  |
| AUDITOR | None |  |













## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: OrganizationRole
description: 'Governance role in an Organization tenant. It is deliberately distinct
  from a RoleDefinition: organization membership coordinates contracts and audit only
  and never grants a Realm''s data, secret, execution-cell, or effect authority.'
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  OWNER:
    text: OWNER
  ADMIN:
    text: ADMIN
  MEMBER:
    text: MEMBER
  AUDITOR:
    text: AUDITOR

```
</details>

</div>