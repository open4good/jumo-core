---
search:
  boost: 5.0
---

# Slot: inspiresPolicies


_A principle may inspire a policy, but the policy must be explicit and reviewable (canonical decision 16). Documentation link, not an authorization path._



<div data-search-exclude markdown="1">



URI: [jumo:inspiresPolicies](https://jumo.dev/schemas/jumo-v1/inspiresPolicies)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [Principle](Principle.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
| Domain Of | [Principle](Principle.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [Principle](Principle.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:inspiresPolicies |
| native | jumo:inspiresPolicies |




## LinkML Source

<details>
```yaml
name: inspiresPolicies
description: A principle may inspire a policy, but the policy must be explicit and
  reviewable (canonical decision 16). Documentation link, not an authorization path.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: Principle
domain_of:
- Principle
range: Identifier
multivalued: true

```
</details></div>