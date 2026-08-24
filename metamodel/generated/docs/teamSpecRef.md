---
search:
  boost: 5.0
---

# Slot: teamSpecRef

<div data-search-exclude markdown="1">



URI: [jumo:teamSpecRef](https://jumo.dev/schemas/jumo-v1/teamSpecRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [TeamMember](TeamMember.md) | Discriminated union (roleMember | teamMember) in the source schema |  no  |
| [WorkOrderSpec](WorkOrderSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [TeamMember](TeamMember.md), [WorkOrderSpec](WorkOrderSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:teamSpecRef |
| native | jumo:teamSpecRef |




## LinkML Source

<details>
```yaml
name: teamSpecRef
domain_of:
- TeamMember
- WorkOrderSpec
range: string

```
</details></div>