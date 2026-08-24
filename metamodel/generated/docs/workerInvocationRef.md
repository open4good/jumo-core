---
search:
  boost: 5.0
---

# Slot: workerInvocationRef

<div data-search-exclude markdown="1">



URI: [jumo:workerInvocationRef](https://jumo.dev/schemas/jumo-v1/workerInvocationRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [EvidenceRecord](EvidenceRecord.md) | Append-only sanitized execution observation linked to one WorkerInvocation |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
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
| self | jumo:workerInvocationRef |
| native | jumo:workerInvocationRef |




## LinkML Source

<details>
```yaml
name: workerInvocationRef
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: EvidenceRecord
domain_of:
- EvidenceRecord
range: Identifier
required: true

```
</details></div>