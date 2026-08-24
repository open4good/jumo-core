---
search:
  boost: 5.0
---

# Slot: accountUse


_Which ProviderAccount use context this substrate is authorized to consume, explicit so a declared substrate never silently upgrades from holder-operated to Jumo-managed use._



<div data-search-exclude markdown="1">



URI: [jumo:accountUse](https://jumo.dev/schemas/jumo-v1/accountUse)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkerSubstrateSpec](WorkerSubstrateSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [WorkerAccountUse](WorkerAccountUse.md) |
| Domain Of | [WorkerSubstrateSpec](WorkerSubstrateSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [WorkerSubstrateSpec](WorkerSubstrateSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:accountUse |
| native | jumo:accountUse |




## LinkML Source

<details>
```yaml
name: accountUse
description: Which ProviderAccount use context this substrate is authorized to consume,
  explicit so a declared substrate never silently upgrades from holder-operated to
  Jumo-managed use.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkerSubstrateSpec
domain_of:
- WorkerSubstrateSpec
range: WorkerAccountUse
required: true

```
</details></div>