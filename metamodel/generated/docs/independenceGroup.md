---
search:
  boost: 5.0
---

# Slot: independenceGroup

<div data-search-exclude markdown="1">



URI: [jumo:independenceGroup](https://jumo.dev/schemas/jumo-v1/independenceGroup)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RoleDefinitionSpec](RoleDefinitionSpec.md) |  |  no  |
| [TeamMember](TeamMember.md) | Discriminated union (roleMember | teamMember) in the source schema |  no  |
| [ProviderAccountSpec](ProviderAccountSpec.md) |  |  no  |
| [ProviderPlatformSpec](ProviderPlatformSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [RoleDefinitionSpec](RoleDefinitionSpec.md), [TeamMember](TeamMember.md), [ProviderAccountSpec](ProviderAccountSpec.md), [ProviderPlatformSpec](ProviderPlatformSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:independenceGroup |
| native | jumo:independenceGroup |




## LinkML Source

<details>
```yaml
name: independenceGroup
domain_of:
- RoleDefinitionSpec
- TeamMember
- ProviderAccountSpec
- ProviderPlatformSpec
range: string

```
</details></div>