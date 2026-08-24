---
search:
  boost: 5.0
---

# Slot: includedCreditEur

<div data-search-exclude markdown="1">



URI: [jumo:includedCreditEur](https://jumo.dev/schemas/jumo-v1/includedCreditEur)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OfferingAiUsage](OfferingAiUsage.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Float](Float.md) |
| Domain Of | [OfferingAiUsage](OfferingAiUsage.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `5` |
| Owner | [OfferingAiUsage](OfferingAiUsage.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:includedCreditEur |
| native | jumo:includedCreditEur |




## LinkML Source

<details>
```yaml
name: includedCreditEur
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: '5'
owner: OfferingAiUsage
domain_of:
- OfferingAiUsage
range: float
required: true

```
</details></div>