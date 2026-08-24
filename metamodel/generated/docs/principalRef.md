---
search:
  boost: 5.0
---

# Slot: principalRef

<div data-search-exclude markdown="1">



URI: [jumo:principalRef](https://jumo.dev/schemas/jumo-v1/principalRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [PrincipalIdentityBindingSpec](PrincipalIdentityBindingSpec.md) |  |  no  |
| [RoleBearer](RoleBearer.md) | Discriminated union (HUMAN | AGENT | FEDERATED_PEER) in the source schema |  no  |
| [ConnectorSessionBinding](ConnectorSessionBinding.md) | Active OAuth or API session binding for a Principal/Realm and target machine |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [PrincipalIdentityBindingSpec](PrincipalIdentityBindingSpec.md), [RoleBearer](RoleBearer.md), [ConnectorSessionBinding](ConnectorSessionBinding.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:principalRef |
| native | jumo:principalRef |




## LinkML Source

<details>
```yaml
name: principalRef
domain_of:
- PrincipalIdentityBindingSpec
- RoleBearer
- ConnectorSessionBinding
range: string

```
</details></div>