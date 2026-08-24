---
search:
  boost: 5.0
---

# Slot: targetType

<div data-search-exclude markdown="1">



URI: [jumo:targetType](https://jumo.dev/schemas/jumo-v1/targetType)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [JourneyVerificationSpec](JourneyVerificationSpec.md) | Secret-free declaration of an explicit real observation a journey step may re... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [JourneyVerificationTarget](JourneyVerificationTarget.md) |
| Domain Of | [JourneyVerificationSpec](JourneyVerificationSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [JourneyVerificationSpec](JourneyVerificationSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:targetType |
| native | jumo:targetType |




## LinkML Source

<details>
```yaml
name: targetType
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: JourneyVerificationSpec
domain_of:
- JourneyVerificationSpec
range: JourneyVerificationTarget
required: true

```
</details></div>