---
search:
  boost: 5.0
---

# Slot: evidenceRefs

<div data-search-exclude markdown="1">



URI: [jumo:evidenceRefs](https://jumo.dev/schemas/jumo-v1/evidenceRefs)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [KitReleaseCertificationSpec](KitReleaseCertificationSpec.md) |  |  no  |
| [WorkOrderSpec](WorkOrderSpec.md) |  |  no  |
| [AttentionItemSpec](AttentionItemSpec.md) |  |  no  |
| [ControlAssessment](ControlAssessment.md) | Recognized result of assessing a Control against a ComplianceProfile, with ob... |  no  |
| [ConnectorAppraisalSpec](ConnectorAppraisalSpec.md) |  |  no  |
| [RemoteMcpAppraisalSpec](RemoteMcpAppraisalSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [KitReleaseCertificationSpec](KitReleaseCertificationSpec.md), [WorkOrderSpec](WorkOrderSpec.md), [AttentionItemSpec](AttentionItemSpec.md), [ControlAssessment](ControlAssessment.md), [ConnectorAppraisalSpec](ConnectorAppraisalSpec.md), [RemoteMcpAppraisalSpec](RemoteMcpAppraisalSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:evidenceRefs |
| native | jumo:evidenceRefs |




## LinkML Source

<details>
```yaml
name: evidenceRefs
domain_of:
- KitReleaseCertificationSpec
- WorkOrderSpec
- AttentionItemSpec
- ControlAssessment
- ConnectorAppraisalSpec
- RemoteMcpAppraisalSpec
range: string

```
</details></div>