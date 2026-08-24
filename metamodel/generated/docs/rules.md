---
search:
  boost: 5.0
---

# Slot: rules

<div data-search-exclude markdown="1">



URI: [jumo:rules](https://jumo.dev/schemas/jumo-v1/rules)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [PolicySetSpec](PolicySetSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [PolicyRule](PolicyRule.md) |
| Domain Of | [PolicySetSpec](PolicySetSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [PolicySetSpec](PolicySetSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:rules |
| native | jumo:rules |




## LinkML Source

<details>
```yaml
name: rules
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: PolicySetSpec
domain_of:
- PolicySetSpec
range: PolicyRule
required: true
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 1

```
</details></div>