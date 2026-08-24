---
search:
  boost: 5.0
---

# Slot: routingEligibilityCheck


_Refuses a proposal that would route work to a team the project did not declare eligible. A project with no declared eligibility constrains nothing, as RoutingEligibility itself is additive._



<div data-search-exclude markdown="1">



URI: [jumo:routingEligibilityCheck](https://jumo.dev/schemas/jumo-v1/routingEligibilityCheck)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneyEmission](AssistedJourneyEmission.md) | The declarative replacement for a per-journey emission branch |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [AssistedJourneyRoutingEligibilityCheck](AssistedJourneyRoutingEligibilityCheck.md) |
| Domain Of | [AssistedJourneyEmission](AssistedJourneyEmission.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AssistedJourneyEmission](AssistedJourneyEmission.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:routingEligibilityCheck |
| native | jumo:routingEligibilityCheck |




## LinkML Source

<details>
```yaml
name: routingEligibilityCheck
description: Refuses a proposal that would route work to a team the project did not
  declare eligible. A project with no declared eligibility constrains nothing, as
  RoutingEligibility itself is additive.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneyEmission
domain_of:
- AssistedJourneyEmission
range: AssistedJourneyRoutingEligibilityCheck
inlined: true

```
</details></div>