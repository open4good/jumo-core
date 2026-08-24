---
search:
  boost: 5.0
---

# Slot: mappings

<div data-search-exclude markdown="1">



URI: [jumo:mappings](https://jumo.dev/schemas/jumo-v1/mappings)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ComplianceProfileSpec](ComplianceProfileSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ComplianceMapping](ComplianceMapping.md) |
| Domain Of | [ComplianceProfileSpec](ComplianceProfileSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ComplianceProfileSpec](ComplianceProfileSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:mappings |
| native | jumo:mappings |




## LinkML Source

<details>
```yaml
name: mappings
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ComplianceProfileSpec
domain_of:
- ComplianceProfileSpec
range: ComplianceMapping
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>