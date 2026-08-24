---
search:
  boost: 5.0
---

# Slot: byokAllowed

<div data-search-exclude markdown="1">



URI: [jumo:byokAllowed](https://jumo.dev/schemas/jumo-v1/byokAllowed)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OfferingAiUsage](OfferingAiUsage.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Boolean](Boolean.md) |
| Domain Of | [OfferingAiUsage](OfferingAiUsage.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `true` |
| Owner | [OfferingAiUsage](OfferingAiUsage.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:byokAllowed |
| native | jumo:byokAllowed |




## LinkML Source

<details>
```yaml
name: byokAllowed
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: 'true'
owner: OfferingAiUsage
domain_of:
- OfferingAiUsage
range: boolean
required: true

```
</details></div>