---
search:
  boost: 5.0
---

# Slot: inventoryDigest

<div data-search-exclude markdown="1">



URI: [jumo:inventoryDigest](https://jumo.dev/schemas/jumo-v1/inventoryDigest)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RemoteMcpAppraisalSpec](RemoteMcpAppraisalSpec.md) |  |  no  |
| [McpInventorySnapshot](McpInventorySnapshot.md) | PostgreSQL event recording an MCP inventory discovered under an exact Realm l... |  no  |
| [ConnectorActivationDecision](ConnectorActivationDecision.md) | Owner approval and activation decision activating a connector package |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [RemoteMcpAppraisalSpec](RemoteMcpAppraisalSpec.md), [McpInventorySnapshot](McpInventorySnapshot.md), [ConnectorActivationDecision](ConnectorActivationDecision.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:inventoryDigest |
| native | jumo:inventoryDigest |




## LinkML Source

<details>
```yaml
name: inventoryDigest
domain_of:
- RemoteMcpAppraisalSpec
- McpInventorySnapshot
- ConnectorActivationDecision
range: string

```
</details></div>