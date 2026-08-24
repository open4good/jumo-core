---
search:
  boost: 5.0
---

# Slot: termination

<div data-search-exclude markdown="1">



URI: [jumo:termination](https://jumo.dev/schemas/jumo-v1/termination)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [EngagementMethodSpec](EngagementMethodSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [EngagementTermination](EngagementTermination.md) |
| Domain Of | [EngagementMethodSpec](EngagementMethodSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [EngagementMethodSpec](EngagementMethodSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:termination |
| native | jumo:termination |




## LinkML Source

<details>
```yaml
name: termination
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: EngagementMethodSpec
domain_of:
- EngagementMethodSpec
range: EngagementTermination
required: true
inlined: true

```
</details></div>