---
search:
  boost: 5.0
---

# Slot: admissionReason


_Required on ADMISSION_REFUSED (Rego)._



<div data-search-exclude markdown="1">



URI: [jumo:admissionReason](https://jumo.dev/schemas/jumo-v1/admissionReason)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AttentionItemSpec](AttentionItemSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [AttentionAdmissionReason](AttentionAdmissionReason.md) |
| Domain Of | [AttentionItemSpec](AttentionItemSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AttentionItemSpec](AttentionItemSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:admissionReason |
| native | jumo:admissionReason |




## LinkML Source

<details>
```yaml
name: admissionReason
description: Required on ADMISSION_REFUSED (Rego).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AttentionItemSpec
domain_of:
- AttentionItemSpec
range: AttentionAdmissionReason

```
</details></div>