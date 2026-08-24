---
search:
  boost: 5.0
---

# Slot: type

<div data-search-exclude markdown="1">



URI: [jumo:type](https://jumo.dev/schemas/jumo-v1/type)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [KitBindingDeclaration](KitBindingDeclaration.md) |  |  no  |
| [KitModule](KitModule.md) |  |  no  |
| [AttentionItemSpec](AttentionItemSpec.md) |  |  no  |
| [FederationMessage](FederationMessage.md) |  |  no  |
| [ApiProblem](ApiProblem.md) | RFC 9457 compliant problem details model for API errors without unconstrained... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [KitBindingDeclaration](KitBindingDeclaration.md), [KitModule](KitModule.md), [AttentionItemSpec](AttentionItemSpec.md), [FederationMessage](FederationMessage.md), [ApiProblem](ApiProblem.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:type |
| native | jumo:type |




## LinkML Source

<details>
```yaml
name: type
domain_of:
- KitBindingDeclaration
- KitModule
- AttentionItemSpec
- FederationMessage
- ApiProblem
range: string

```
</details></div>