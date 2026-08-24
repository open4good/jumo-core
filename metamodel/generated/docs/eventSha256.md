---
search:
  boost: 5.0
---

# Slot: eventSha256

<div data-search-exclude markdown="1">



URI: [jumo:eventSha256](https://jumo.dev/schemas/jumo-v1/eventSha256)
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


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^sha256:[0-9a-f]{64}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:eventSha256 |
| native | jumo:eventSha256 |




## LinkML Source

<details>
```yaml
name: eventSha256
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: EvidenceRecord
domain_of:
- EvidenceRecord
range: string
required: true
pattern: ^sha256:[0-9a-f]{64}$

```
</details></div>