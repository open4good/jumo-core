---
search:
  boost: 5.0
---

# Slot: platformRef


_The ProviderPlatform catalog entry this account was opened against. Required when mode is GATEWAY_ROUTED; forbidden when PLAN_DIRECT, which has no upstream provider-egress traffic (Rego)._



<div data-search-exclude markdown="1">



URI: [jumo:platformRef](https://jumo.dev/schemas/jumo-v1/platformRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProviderRouting](ProviderRouting.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [ProviderRouting](ProviderRouting.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProviderRouting](ProviderRouting.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:platformRef |
| native | jumo:platformRef |




## LinkML Source

<details>
```yaml
name: platformRef
description: The ProviderPlatform catalog entry this account was opened against. Required
  when mode is GATEWAY_ROUTED; forbidden when PLAN_DIRECT, which has no upstream provider-egress
  traffic (Rego).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProviderRouting
domain_of:
- ProviderRouting
range: ContractReference
inlined: true

```
</details></div>