---
search:
  boost: 5.0
---

# Slot: contractRevision

<div data-search-exclude markdown="1">



URI: [jumo:contractRevision](https://jumo.dev/schemas/jumo-v1/contractRevision)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkOrderSpec](WorkOrderSpec.md) |  |  no  |
| [MachineAdminCommand](MachineAdminCommand.md) | Ansible playbook execution command sent to an enrolled machine |  no  |
| [WorkloadCommand](WorkloadCommand.md) | Typed workload command claimed by pull from an ExecutionMachine, distinct fro... |  no  |
| [McpInventorySnapshot](McpInventorySnapshot.md) | PostgreSQL event recording an MCP inventory discovered under an exact Realm l... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [WorkOrderSpec](WorkOrderSpec.md), [MachineAdminCommand](MachineAdminCommand.md), [WorkloadCommand](WorkloadCommand.md), [McpInventorySnapshot](McpInventorySnapshot.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:contractRevision |
| native | jumo:contractRevision |




## LinkML Source

<details>
```yaml
name: contractRevision
domain_of:
- WorkOrderSpec
- MachineAdminCommand
- WorkloadCommand
- McpInventorySnapshot
range: string

```
</details></div>