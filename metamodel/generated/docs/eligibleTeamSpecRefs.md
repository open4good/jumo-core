---
search:
  boost: 5.0
---

# Slot: eligibleTeamSpecRefs

<div data-search-exclude markdown="1">



URI: [jumo:eligibleTeamSpecRefs](https://jumo.dev/schemas/jumo-v1/eligibleTeamSpecRefs)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RoutingEligibilitySpec](RoutingEligibilitySpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [RoutingEligibilitySpec](RoutingEligibilitySpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [RoutingEligibilitySpec](RoutingEligibilitySpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:eligibleTeamSpecRefs |
| native | jumo:eligibleTeamSpecRefs |




## LinkML Source

<details>
```yaml
name: eligibleTeamSpecRefs
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: RoutingEligibilitySpec
domain_of:
- RoutingEligibilitySpec
range: ContractReference
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>