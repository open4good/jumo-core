---
search:
  boost: 5.0
---

# Slot: verdict

<div data-search-exclude markdown="1">



URI: [jumo:verdict](https://jumo.dev/schemas/jumo-v1/verdict)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConnectorAppraisalSpec](ConnectorAppraisalSpec.md) |  |  no  |
| [RemoteMcpAppraisalSpec](RemoteMcpAppraisalSpec.md) |  |  no  |
| [EntitlementUseContext](EntitlementUseContext.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ConnectorAppraisalSpec](ConnectorAppraisalSpec.md), [RemoteMcpAppraisalSpec](RemoteMcpAppraisalSpec.md), [EntitlementUseContext](EntitlementUseContext.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:verdict |
| native | jumo:verdict |




## LinkML Source

<details>
```yaml
name: verdict
domain_of:
- ConnectorAppraisalSpec
- RemoteMcpAppraisalSpec
- EntitlementUseContext
range: string

```
</details></div>