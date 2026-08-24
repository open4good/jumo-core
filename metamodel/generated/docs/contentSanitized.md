---
search:
  boost: 5.0
---

# Slot: contentSanitized

<div data-search-exclude markdown="1">



URI: [jumo:contentSanitized](https://jumo.dev/schemas/jumo-v1/contentSanitized)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [EvidenceRecord](EvidenceRecord.md) | Append-only sanitized execution observation linked to one WorkerInvocation |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Boolean](Boolean.md) |
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
| self | jumo:contentSanitized |
| native | jumo:contentSanitized |




## LinkML Source

<details>
```yaml
name: contentSanitized
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: EvidenceRecord
domain_of:
- EvidenceRecord
range: boolean
required: true

```
</details></div>