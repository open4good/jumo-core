---
search:
  boost: 5.0
---

# Slot: triggers

<div data-search-exclude markdown="1">



URI: [jumo:triggers](https://jumo.dev/schemas/jumo-v1/triggers)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AcknowledgementPolicy](AcknowledgementPolicy.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [AcknowledgementTrigger](AcknowledgementTrigger.md) |
| Domain Of | [AcknowledgementPolicy](AcknowledgementPolicy.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AcknowledgementPolicy](AcknowledgementPolicy.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:triggers |
| native | jumo:triggers |




## LinkML Source

<details>
```yaml
name: triggers
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AcknowledgementPolicy
domain_of:
- AcknowledgementPolicy
range: AcknowledgementTrigger
required: true
multivalued: true
minimum_cardinality: 1

```
</details></div>