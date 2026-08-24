---
search:
  boost: 5.0
---

# Slot: repository

<div data-search-exclude markdown="1">



URI: [jumo:repository](https://jumo.dev/schemas/jumo-v1/repository)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RepositoryBinding](RepositoryBinding.md) |  |  no  |
| [KitReference](KitReference.md) |  |  no  |
| [KitLockSpec](KitLockSpec.md) |  |  no  |
| [KitReleaseCertificationSpec](KitReleaseCertificationSpec.md) |  |  no  |
| [ChangeSetProposal](ChangeSetProposal.md) | Ordered multi-file changeset proposed against one repository, the unit ForgeA... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [RepositoryBinding](RepositoryBinding.md), [KitReference](KitReference.md), [KitLockSpec](KitLockSpec.md), [KitReleaseCertificationSpec](KitReleaseCertificationSpec.md), [ChangeSetProposal](ChangeSetProposal.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:repository |
| native | jumo:repository |




## LinkML Source

<details>
```yaml
name: repository
domain_of:
- RepositoryBinding
- KitReference
- KitLockSpec
- KitReleaseCertificationSpec
- ChangeSetProposal
range: string

```
</details></div>