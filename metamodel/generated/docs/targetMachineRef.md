---
search:
  boost: 5.0
---

# Slot: targetMachineRef

<div data-search-exclude markdown="1">



URI: [jumo:targetMachineRef](https://jumo.dev/schemas/jumo-v1/targetMachineRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConnectorTestPlan](ConnectorTestPlan.md) | Deterministic test plan for verifying connector operations on a target machin... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [ConnectorTestPlan](ConnectorTestPlan.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ConnectorTestPlan](ConnectorTestPlan.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:targetMachineRef |
| native | jumo:targetMachineRef |




## LinkML Source

<details>
```yaml
name: targetMachineRef
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ConnectorTestPlan
domain_of:
- ConnectorTestPlan
range: ContractReference
inlined: true

```
</details></div>