---
search:
  boost: 5.0
---

# Slot: egressRouteId


_Names the generated provider-egress nginx location this platform's traffic proxies through. Never a raw URL; the worker builds only /{egressRouteId}/... and cannot select an upstream itself._



<div data-search-exclude markdown="1">



URI: [jumo:egressRouteId](https://jumo.dev/schemas/jumo-v1/egressRouteId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProviderPlatformSpec](ProviderPlatformSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
| Domain Of | [ProviderPlatformSpec](ProviderPlatformSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProviderPlatformSpec](ProviderPlatformSpec.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^[a-z][a-z0-9-]{0,30}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:egressRouteId |
| native | jumo:egressRouteId |




## LinkML Source

<details>
```yaml
name: egressRouteId
description: Names the generated provider-egress nginx location this platform's traffic
  proxies through. Never a raw URL; the worker builds only /{egressRouteId}/... and
  cannot select an upstream itself.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProviderPlatformSpec
domain_of:
- ProviderPlatformSpec
range: Identifier
required: true
pattern: ^[a-z][a-z0-9-]{0,30}$

```
</details></div>