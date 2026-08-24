---
search:
  boost: 5.0
---

# Slot: role

<div data-search-exclude markdown="1">



URI: [jumo:role](https://jumo.dev/schemas/jumo-v1/role)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [TeamMember](TeamMember.md) | Discriminated union (roleMember | teamMember) in the source schema |  no  |
| [OrganizationAccessBindingSpec](OrganizationAccessBindingSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [TeamMember](TeamMember.md), [OrganizationAccessBindingSpec](OrganizationAccessBindingSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:role |
| native | jumo:role |




## LinkML Source

<details>
```yaml
name: role
domain_of:
- TeamMember
- OrganizationAccessBindingSpec
range: string

```
</details></div>