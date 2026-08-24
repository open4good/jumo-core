---
search:
  boost: 5.0
---

# Slot: observedAt

<div data-search-exclude markdown="1">



URI: [jumo:observedAt](https://jumo.dev/schemas/jumo-v1/observedAt)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RealmEnforcement](RealmEnforcement.md) | ENFORCED requiring observedAt/evidenceRef/evidenceMaxAge moves to Rego: claim... |  no  |
| [MachineInventoryObservation](MachineInventoryObservation.md) | Observed hardware and OS characteristics of an enrolled machine |  no  |
| [CliInstallationObservation](CliInstallationObservation.md) | Observed installation and doctor health status of a CLI tool on a machine |  no  |
| [McpCatalogProvenancePin](McpCatalogProvenancePin.md) | Immutable source observation pin carried into generated connector material; i... |  no  |
| [McpCatalogFieldCandidate](McpCatalogFieldCandidate.md) |  |  no  |
| [RemoteMcpAppraisalSpec](RemoteMcpAppraisalSpec.md) |  |  no  |
| [ChangeSetProjection](ChangeSetProjection.md) | Observed record of the single atomic PR ForgeApplier opened for a ChangeSetPr... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [RealmEnforcement](RealmEnforcement.md), [MachineInventoryObservation](MachineInventoryObservation.md), [CliInstallationObservation](CliInstallationObservation.md), [McpCatalogProvenancePin](McpCatalogProvenancePin.md), [McpCatalogFieldCandidate](McpCatalogFieldCandidate.md), [RemoteMcpAppraisalSpec](RemoteMcpAppraisalSpec.md), [ChangeSetProjection](ChangeSetProjection.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:observedAt |
| native | jumo:observedAt |




## LinkML Source

<details>
```yaml
name: observedAt
domain_of:
- RealmEnforcement
- MachineInventoryObservation
- CliInstallationObservation
- McpCatalogProvenancePin
- McpCatalogFieldCandidate
- RemoteMcpAppraisalSpec
- ChangeSetProjection
range: string

```
</details></div>