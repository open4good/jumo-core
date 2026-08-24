---
search:
  boost: 5.0
---

# Slot: remoteRoleKey


_Optional remote role identifier in the peer realm._



<div data-search-exclude markdown="1">



URI: [jumo:remoteRoleKey](https://jumo.dev/schemas/jumo-v1/remoteRoleKey)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RoleBearer](RoleBearer.md) | Discriminated union (HUMAN | AGENT | FEDERATED_PEER) in the source schema |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [RoleBearer](RoleBearer.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [RoleBearer](RoleBearer.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:remoteRoleKey |
| native | jumo:remoteRoleKey |




## LinkML Source

<details>
```yaml
name: remoteRoleKey
description: Optional remote role identifier in the peer realm.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: RoleBearer
domain_of:
- RoleBearer
range: string

```
</details></div>