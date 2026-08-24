---
search:
  boost: 5.0
---

# Slot: authorizationId

<div data-search-exclude markdown="1">



URI: [jumo:authorizationId](https://jumo.dev/schemas/jumo-v1/authorizationId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [EffectTestAuthorization](EffectTestAuthorization.md) | Dual-consent authorization record for executing irreversible effect tests |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
| Domain Of | [EffectTestAuthorization](EffectTestAuthorization.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [EffectTestAuthorization](EffectTestAuthorization.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:authorizationId |
| native | jumo:authorizationId |




## LinkML Source

<details>
```yaml
name: authorizationId
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: EffectTestAuthorization
domain_of:
- EffectTestAuthorization
range: Identifier
required: true

```
</details></div>