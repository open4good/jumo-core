---
search:
  boost: 5.0
---

# Slot: provider

<div data-search-exclude markdown="1">



URI: [jumo:provider](https://jumo.dev/schemas/jumo-v1/provider)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RepositoryBinding](RepositoryBinding.md) |  |  no  |
| [ProviderAccountSpec](ProviderAccountSpec.md) |  |  no  |
| [ChangeSetProjection](ChangeSetProjection.md) | Observed record of the single atomic PR ForgeApplier opened for a ChangeSetPr... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [RepositoryBinding](RepositoryBinding.md), [ProviderAccountSpec](ProviderAccountSpec.md), [ChangeSetProjection](ChangeSetProjection.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:provider |
| native | jumo:provider |




## LinkML Source

<details>
```yaml
name: provider
domain_of:
- RepositoryBinding
- ProviderAccountSpec
- ChangeSetProjection
range: string

```
</details></div>