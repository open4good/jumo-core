---
search:
  boost: 5.0
---

# Slot: onInsufficiency


_How this profile responds to its own worker's INSUFFICIENT_NEEDS_DEPTH signal (ADR-0019, worker-sufficiency-bounded-escalation). Absent defaults to NONE -- most profiles take the existing human-decision path rather than an automatic bounded retry._



<div data-search-exclude markdown="1">



URI: [jumo:onInsufficiency](https://jumo.dev/schemas/jumo-v1/onInsufficiency)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkerRequirementProfileSpec](WorkerRequirementProfileSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [SufficiencyEscalationPolicy](SufficiencyEscalationPolicy.md) |
| Domain Of | [WorkerRequirementProfileSpec](WorkerRequirementProfileSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [WorkerRequirementProfileSpec](WorkerRequirementProfileSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:onInsufficiency |
| native | jumo:onInsufficiency |




## LinkML Source

<details>
```yaml
name: onInsufficiency
description: How this profile responds to its own worker's INSUFFICIENT_NEEDS_DEPTH
  signal (ADR-0019, worker-sufficiency-bounded-escalation). Absent defaults to NONE
  -- most profiles take the existing human-decision path rather than an automatic
  bounded retry.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkerRequirementProfileSpec
domain_of:
- WorkerRequirementProfileSpec
range: SufficiencyEscalationPolicy

```
</details></div>