---
search:
  boost: 5.0
---

# Slot: maximumAge

<div data-search-exclude markdown="1">



URI: [jumo:maximumAge](https://jumo.dev/schemas/jumo-v1/maximumAge)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [SecretRotation](SecretRotation.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Duration](Duration.md) |
| Domain Of | [SecretRotation](SecretRotation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [SecretRotation](SecretRotation.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:maximumAge |
| native | jumo:maximumAge |




## LinkML Source

<details>
```yaml
name: maximumAge
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: SecretRotation
domain_of:
- SecretRotation
range: Duration

```
</details></div>