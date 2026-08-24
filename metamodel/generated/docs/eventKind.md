---
search:
  boost: 5.0
---

# Slot: eventKind

<div data-search-exclude markdown="1">



URI: [jumo:eventKind](https://jumo.dev/schemas/jumo-v1/eventKind)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [EvidenceRecord](EvidenceRecord.md) | Append-only sanitized execution observation linked to one WorkerInvocation |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [EvidenceRecord](EvidenceRecord.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [EvidenceRecord](EvidenceRecord.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:eventKind |
| native | jumo:eventKind |




## LinkML Source

<details>
```yaml
name: eventKind
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: EvidenceRecord
domain_of:
- EvidenceRecord
range: string
required: true

```
</details></div>