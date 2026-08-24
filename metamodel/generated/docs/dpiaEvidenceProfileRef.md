---
search:
  boost: 5.0
---

# Slot: dpiaEvidenceProfileRef


_References an EvidenceProfile carrying the DPIA (art. 35), when required._



<div data-search-exclude markdown="1">



URI: [jumo:dpiaEvidenceProfileRef](https://jumo.dev/schemas/jumo-v1/dpiaEvidenceProfileRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProcessingRegisterEntry](ProcessingRegisterEntry.md) | RGPD art |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [ProcessingRegisterEntry](ProcessingRegisterEntry.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProcessingRegisterEntry](ProcessingRegisterEntry.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:dpiaEvidenceProfileRef |
| native | jumo:dpiaEvidenceProfileRef |




## LinkML Source

<details>
```yaml
name: dpiaEvidenceProfileRef
description: References an EvidenceProfile carrying the DPIA (art. 35), when required.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProcessingRegisterEntry
domain_of:
- ProcessingRegisterEntry
range: ContractReference
inlined: true

```
</details></div>