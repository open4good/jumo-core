---
search:
  boost: 5.0
---

# Slot: processingRegister


_RGPD art. 30 register of processing activities this profile covers. Empty for non-privacy referentials._



<div data-search-exclude markdown="1">



URI: [jumo:processingRegister](https://jumo.dev/schemas/jumo-v1/processingRegister)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ComplianceProfileSpec](ComplianceProfileSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ProcessingRegisterEntry](ProcessingRegisterEntry.md) |
| Domain Of | [ComplianceProfileSpec](ComplianceProfileSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ComplianceProfileSpec](ComplianceProfileSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:processingRegister |
| native | jumo:processingRegister |




## LinkML Source

<details>
```yaml
name: processingRegister
description: RGPD art. 30 register of processing activities this profile covers. Empty
  for non-privacy referentials.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ComplianceProfileSpec
domain_of:
- ComplianceProfileSpec
range: ProcessingRegisterEntry
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>