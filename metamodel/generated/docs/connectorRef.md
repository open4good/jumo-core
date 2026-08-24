---
search:
  boost: 5.0
---

# Slot: connectorRef

<div data-search-exclude markdown="1">



URI: [jumo:connectorRef](https://jumo.dev/schemas/jumo-v1/connectorRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConnectorSessionBinding](ConnectorSessionBinding.md) | Active OAuth or API session binding for a Principal/Realm and target machine |  no  |
| [ConnectorTestPlan](ConnectorTestPlan.md) | Deterministic test plan for verifying connector operations on a target machin... |  no  |
| [ConnectorActivationDecision](ConnectorActivationDecision.md) | Owner approval and activation decision activating a connector package |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ConnectorSessionBinding](ConnectorSessionBinding.md), [ConnectorTestPlan](ConnectorTestPlan.md), [ConnectorActivationDecision](ConnectorActivationDecision.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:connectorRef |
| native | jumo:connectorRef |




## LinkML Source

<details>
```yaml
name: connectorRef
domain_of:
- ConnectorSessionBinding
- ConnectorTestPlan
- ConnectorActivationDecision
range: string

```
</details></div>