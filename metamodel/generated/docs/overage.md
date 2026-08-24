---
search:
  boost: 5.0
---

# Slot: overage

<div data-search-exclude markdown="1">



URI: [jumo:overage](https://jumo.dev/schemas/jumo-v1/overage)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OfferingAiUsage](OfferingAiUsage.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [OfferingOverage](OfferingOverage.md) |
| Domain Of | [OfferingAiUsage](OfferingAiUsage.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [OfferingAiUsage](OfferingAiUsage.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:overage |
| native | jumo:overage |




## LinkML Source

<details>
```yaml
name: overage
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: OfferingAiUsage
domain_of:
- OfferingAiUsage
range: OfferingOverage
required: true
inlined: true

```
</details></div>