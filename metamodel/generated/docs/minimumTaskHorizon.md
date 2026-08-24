---
search:
  boost: 5.0
---

# Slot: minimumTaskHorizon

<div data-search-exclude markdown="1">



URI: [jumo:minimumTaskHorizon](https://jumo.dev/schemas/jumo-v1/minimumTaskHorizon)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkerQualityRequirement](WorkerQualityRequirement.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Duration](Duration.md) |
| Domain Of | [WorkerQualityRequirement](WorkerQualityRequirement.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [WorkerQualityRequirement](WorkerQualityRequirement.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:minimumTaskHorizon |
| native | jumo:minimumTaskHorizon |




## LinkML Source

<details>
```yaml
name: minimumTaskHorizon
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkerQualityRequirement
domain_of:
- WorkerQualityRequirement
range: Duration
required: true

```
</details></div>