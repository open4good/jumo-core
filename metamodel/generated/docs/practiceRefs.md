---
search:
  boost: 5.0
---

# Slot: practiceRefs

<div data-search-exclude markdown="1">



URI: [jumo:practiceRefs](https://jumo.dev/schemas/jumo-v1/practiceRefs)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AdvisorProfileSpec](AdvisorProfileSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [AdvisorProfileSpec](AdvisorProfileSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AdvisorProfileSpec](AdvisorProfileSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:practiceRefs |
| native | jumo:practiceRefs |




## LinkML Source

<details>
```yaml
name: practiceRefs
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AdvisorProfileSpec
domain_of:
- AdvisorProfileSpec
range: ContractReference
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>