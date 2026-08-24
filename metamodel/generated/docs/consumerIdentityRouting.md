---
search:
  boost: 5.0
---

# Slot: consumerIdentityRouting

<div data-search-exclude markdown="1">



URI: [jumo:consumerIdentityRouting](https://jumo.dev/schemas/jumo-v1/consumerIdentityRouting)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OfferingAiUsage](OfferingAiUsage.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ConsumerIdentityRouting](ConsumerIdentityRouting.md) |
| Domain Of | [OfferingAiUsage](OfferingAiUsage.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `FORBIDDEN` |
| Owner | [OfferingAiUsage](OfferingAiUsage.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:consumerIdentityRouting |
| native | jumo:consumerIdentityRouting |




## LinkML Source

<details>
```yaml
name: consumerIdentityRouting
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: FORBIDDEN
owner: OfferingAiUsage
domain_of:
- OfferingAiUsage
range: ConsumerIdentityRouting
required: true

```
</details></div>