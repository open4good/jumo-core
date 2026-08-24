---
search:
  boost: 5.0
---

# Slot: hardCap

<div data-search-exclude markdown="1">



URI: [jumo:hardCap](https://jumo.dev/schemas/jumo-v1/hardCap)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OfferingOverage](OfferingOverage.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Boolean](Boolean.md) |
| Domain Of | [OfferingOverage](OfferingOverage.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `true` |
| Owner | [OfferingOverage](OfferingOverage.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:hardCap |
| native | jumo:hardCap |




## LinkML Source

<details>
```yaml
name: hardCap
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: 'true'
owner: OfferingOverage
domain_of:
- OfferingOverage
range: boolean
required: true

```
</details></div>