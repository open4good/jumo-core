---
search:
  boost: 5.0
---

# Slot: approvalPolicy


_OWNER_ONLY (default): only the ownerRealm may authorize forge writes. MUTUAL_CONSENT: every co-owner Realm must signal approval before ForgeApplier merges._



<div data-search-exclude markdown="1">



URI: [jumo:approvalPolicy](https://jumo.dev/schemas/jumo-v1/approvalPolicy)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RepositoryBinding](RepositoryBinding.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [SharedRepositoryApprovalPolicy](SharedRepositoryApprovalPolicy.md) |
| Domain Of | [RepositoryBinding](RepositoryBinding.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [RepositoryBinding](RepositoryBinding.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:approvalPolicy |
| native | jumo:approvalPolicy |




## LinkML Source

<details>
```yaml
name: approvalPolicy
description: 'OWNER_ONLY (default): only the ownerRealm may authorize forge writes.
  MUTUAL_CONSENT: every co-owner Realm must signal approval before ForgeApplier merges.'
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: RepositoryBinding
domain_of:
- RepositoryBinding
range: SharedRepositoryApprovalPolicy

```
</details></div>