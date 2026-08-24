---
search:
  boost: 5.0
---

# Slot: debtor


_The role or team that owes this work (commitment lifecycle addition, conceptual upgrades table). Defaults conceptually to producerRoleDefinitionRef/teamSpecRef; kept as an explicit field so a WorkOrder assigned onward carries an accountable debtor independent of who drafted it._



<div data-search-exclude markdown="1">



URI: [jumo:debtor](https://jumo.dev/schemas/jumo-v1/debtor)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkOrderSpec](WorkOrderSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
| Domain Of | [WorkOrderSpec](WorkOrderSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [WorkOrderSpec](WorkOrderSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:debtor |
| native | jumo:debtor |




## LinkML Source

<details>
```yaml
name: debtor
description: The role or team that owes this work (commitment lifecycle addition,
  conceptual upgrades table). Defaults conceptually to producerRoleDefinitionRef/teamSpecRef;
  kept as an explicit field so a WorkOrder assigned onward carries an accountable
  debtor independent of who drafted it.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkOrderSpec
domain_of:
- WorkOrderSpec
range: Identifier

```
</details></div>