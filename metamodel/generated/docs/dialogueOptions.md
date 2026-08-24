---
search:
  boost: 5.0
---

# Slot: dialogueOptions

<div data-search-exclude markdown="1">



URI: [jumo:dialogueOptions](https://jumo.dev/schemas/jumo-v1/dialogueOptions)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AdvisorProfileSpec](AdvisorProfileSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [AdvisorDialogueOption](AdvisorDialogueOption.md) |
| Domain Of | [AdvisorProfileSpec](AdvisorProfileSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
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
| self | jumo:dialogueOptions |
| native | jumo:dialogueOptions |




## LinkML Source

<details>
```yaml
name: dialogueOptions
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AdvisorProfileSpec
domain_of:
- AdvisorProfileSpec
range: AdvisorDialogueOption
required: true
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 1

```
</details></div>