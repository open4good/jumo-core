---
search:
  boost: 5.0
---

# Slot: namespace

<div data-search-exclude markdown="1">



URI: [jumo:namespace](https://jumo.dev/schemas/jumo-v1/namespace)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ContractReference](ContractReference.md) | Structured reference to a Git-declared contract document |  no  |
| [Metadata](Metadata.md) | Shared identity block for every contract document |  no  |
| [FederationProfileSpec](FederationProfileSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ContractReference](ContractReference.md), [Metadata](Metadata.md), [FederationProfileSpec](FederationProfileSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:namespace |
| native | jumo:namespace |




## LinkML Source

<details>
```yaml
name: namespace
domain_of:
- ContractReference
- Metadata
- FederationProfileSpec
range: string

```
</details></div>