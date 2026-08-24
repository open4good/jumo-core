---
search:
  boost: 5.0
---

# Slot: appraisedByRoleDefinitionRef

<div data-search-exclude markdown="1">



URI: [jumo:appraisedByRoleDefinitionRef](https://jumo.dev/schemas/jumo-v1/appraisedByRoleDefinitionRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConnectorAppraisalSpec](ConnectorAppraisalSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [ConnectorAppraisalSpec](ConnectorAppraisalSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ConnectorAppraisalSpec](ConnectorAppraisalSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:appraisedByRoleDefinitionRef |
| native | jumo:appraisedByRoleDefinitionRef |




## LinkML Source

<details>
```yaml
name: appraisedByRoleDefinitionRef
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ConnectorAppraisalSpec
domain_of:
- ConnectorAppraisalSpec
range: ContractReference
required: true
inlined: true

```
</details></div>