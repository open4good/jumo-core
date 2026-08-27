---
search:
  boost: 5.0
---

# Slot: secretBindingRef

<div data-search-exclude markdown="1">



URI: [jumo:secretBindingRef](https://jumo.dev/schemas/jumo-v1/secretBindingRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [DelegatedSecretGrant](DelegatedSecretGrant.md) | One response-wrapped OpenBao child token grant issued for a lease and SecretB... |  no  |
| [McpRegistrySourceSpec](McpRegistrySourceSpec.md) |  |  no  |
| [ProviderAccountSpec](ProviderAccountSpec.md) |  |  no  |
| [WorkerModelAccess](WorkerModelAccess.md) |  |  no  |
| [ConnectorSessionBinding](ConnectorSessionBinding.md) | Active OAuth or API session binding for a Principal/Realm and target machine |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [DelegatedSecretGrant](DelegatedSecretGrant.md), [McpRegistrySourceSpec](McpRegistrySourceSpec.md), [ProviderAccountSpec](ProviderAccountSpec.md), [WorkerModelAccess](WorkerModelAccess.md), [ConnectorSessionBinding](ConnectorSessionBinding.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:secretBindingRef |
| native | jumo:secretBindingRef |




## LinkML Source

<details>
```yaml
name: secretBindingRef
domain_of:
- DelegatedSecretGrant
- McpRegistrySourceSpec
- ProviderAccountSpec
- WorkerModelAccess
- ConnectorSessionBinding
range: string

```
</details></div>