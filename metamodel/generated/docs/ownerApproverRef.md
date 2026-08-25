---
search:
  boost: 5.0
---

# Slot: ownerApproverRef

<div data-search-exclude markdown="1">



URI: [jumo:ownerApproverRef](https://jumo.dev/schemas/jumo-v1/ownerApproverRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConnectorActivationDecision](ConnectorActivationDecision.md) | Owner approval and activation decision activating a connector package |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [ConnectorActivationDecision](ConnectorActivationDecision.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ConnectorActivationDecision](ConnectorActivationDecision.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:ownerApproverRef |
| native | jumo:ownerApproverRef |




## LinkML Source

<details>
```yaml
name: ownerApproverRef
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ConnectorActivationDecision
domain_of:
- ConnectorActivationDecision
range: ContractReference
required: true
inlined: true

```
</details></div>