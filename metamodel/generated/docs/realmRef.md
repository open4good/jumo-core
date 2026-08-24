---
search:
  boost: 5.0
---

# Slot: realmRef

<div data-search-exclude markdown="1">



URI: [jumo:realmRef](https://jumo.dev/schemas/jumo-v1/realmRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AttentionTarget](AttentionTarget.md) |  |  no  |
| [ConnectorSessionBinding](ConnectorSessionBinding.md) | Active OAuth or API session binding for a Principal/Realm and target machine |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [AttentionTarget](AttentionTarget.md), [ConnectorSessionBinding](ConnectorSessionBinding.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:realmRef |
| native | jumo:realmRef |




## LinkML Source

<details>
```yaml
name: realmRef
domain_of:
- AttentionTarget
- ConnectorSessionBinding
range: string

```
</details></div>