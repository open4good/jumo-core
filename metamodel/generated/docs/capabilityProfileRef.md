---
search:
  boost: 5.0
---

# Slot: capabilityProfileRef

<div data-search-exclude markdown="1">



URI: [jumo:capabilityProfileRef](https://jumo.dev/schemas/jumo-v1/capabilityProfileRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AdvisorDialogueOption](AdvisorDialogueOption.md) | One named effort option for a role |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [AdvisorDialogueOption](AdvisorDialogueOption.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AdvisorDialogueOption](AdvisorDialogueOption.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:capabilityProfileRef |
| native | jumo:capabilityProfileRef |




## LinkML Source

<details>
```yaml
name: capabilityProfileRef
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AdvisorDialogueOption
domain_of:
- AdvisorDialogueOption
range: ContractReference
required: true
inlined: true

```
</details></div>