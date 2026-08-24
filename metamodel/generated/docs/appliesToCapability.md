---
search:
  boost: 5.0
---

# Slot: appliesToCapability


_The capability this playbook implements. The platform resolves which playbook to dispatch by scanning for the one declaring the capability a ProcessStep names (capabilityRef), instead of naming the playbook instance by id -- a sealed capability name is platform vocabulary, never an instance identifier (canonical decision 15). At most one playbook may claim a given capability (Rego)._



<div data-search-exclude markdown="1">



URI: [jumo:appliesToCapability](https://jumo.dev/schemas/jumo-v1/appliesToCapability)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineAdminPlaybookSpec](MachineAdminPlaybookSpec.md) | Specification of an allowlisted machine admin playbook |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [CapabilityName](CapabilityName.md) |
| Domain Of | [MachineAdminPlaybookSpec](MachineAdminPlaybookSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [MachineAdminPlaybookSpec](MachineAdminPlaybookSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:appliesToCapability |
| native | jumo:appliesToCapability |




## LinkML Source

<details>
```yaml
name: appliesToCapability
description: The capability this playbook implements. The platform resolves which
  playbook to dispatch by scanning for the one declaring the capability a ProcessStep
  names (capabilityRef), instead of naming the playbook instance by id -- a sealed
  capability name is platform vocabulary, never an instance identifier (canonical
  decision 15). At most one playbook may claim a given capability (Rego).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: MachineAdminPlaybookSpec
domain_of:
- MachineAdminPlaybookSpec
range: CapabilityName

```
</details></div>