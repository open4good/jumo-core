---
search:
  boost: 5.0
---

# Slot: coOwnerRealms


_Additional Realm identifiers that co-govern this repository. When non-empty, all named Realms must declare a matching RepositoryBinding pointing at the same repository. Policy enforces mutual binding via Rego (corpus.project.mutual-repo-binding)._



<div data-search-exclude markdown="1">



URI: [jumo:coOwnerRealms](https://jumo.dev/schemas/jumo-v1/coOwnerRealms)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RepositoryBinding](RepositoryBinding.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
| Domain Of | [RepositoryBinding](RepositoryBinding.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
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
| self | jumo:coOwnerRealms |
| native | jumo:coOwnerRealms |




## LinkML Source

<details>
```yaml
name: coOwnerRealms
description: Additional Realm identifiers that co-govern this repository. When non-empty,
  all named Realms must declare a matching RepositoryBinding pointing at the same
  repository. Policy enforces mutual binding via Rego (corpus.project.mutual-repo-binding).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: RepositoryBinding
domain_of:
- RepositoryBinding
range: Identifier
multivalued: true

```
</details></div>