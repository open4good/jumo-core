---
search:
  boost: 5.0
---

# Slot: roleDefinitionRef

<div data-search-exclude markdown="1">



URI: [jumo:roleDefinitionRef](https://jumo.dev/schemas/jumo-v1/roleDefinitionRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RealmChiefOfStaffRef](RealmChiefOfStaffRef.md) |  |  no  |
| [RoleAssignmentSpec](RoleAssignmentSpec.md) |  |  no  |
| [TeamMember](TeamMember.md) | Discriminated union (roleMember | teamMember) in the source schema |  no  |
| [ChiefOfStaffProfileSpec](ChiefOfStaffProfileSpec.md) |  |  no  |
| [AdvisorProfileSpec](AdvisorProfileSpec.md) |  |  no  |
| [OrganizationRoleBinding](OrganizationRoleBinding.md) |  |  no  |
| [McpRegistrySourceSpec](McpRegistrySourceSpec.md) |  |  no  |
| [McpRegistrySourceBindingSpec](McpRegistrySourceBindingSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [RealmChiefOfStaffRef](RealmChiefOfStaffRef.md), [RoleAssignmentSpec](RoleAssignmentSpec.md), [TeamMember](TeamMember.md), [ChiefOfStaffProfileSpec](ChiefOfStaffProfileSpec.md), [AdvisorProfileSpec](AdvisorProfileSpec.md), [OrganizationRoleBinding](OrganizationRoleBinding.md), [McpRegistrySourceSpec](McpRegistrySourceSpec.md), [McpRegistrySourceBindingSpec](McpRegistrySourceBindingSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:roleDefinitionRef |
| native | jumo:roleDefinitionRef |




## LinkML Source

<details>
```yaml
name: roleDefinitionRef
domain_of:
- RealmChiefOfStaffRef
- RoleAssignmentSpec
- TeamMember
- ChiefOfStaffProfileSpec
- AdvisorProfileSpec
- OrganizationRoleBinding
- McpRegistrySourceSpec
- McpRegistrySourceBindingSpec
range: string

```
</details></div>