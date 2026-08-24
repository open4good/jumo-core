---
search:
  boost: 5.0
---

# Slot: holder

<div data-search-exclude markdown="1">



URI: [jumo:holder](https://jumo.dev/schemas/jumo-v1/holder)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProviderEntitlement](ProviderEntitlement.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [EntitlementHolder](EntitlementHolder.md) |
| Domain Of | [ProviderEntitlement](ProviderEntitlement.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProviderEntitlement](ProviderEntitlement.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:holder |
| native | jumo:holder |




## LinkML Source

<details>
```yaml
name: holder
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProviderEntitlement
domain_of:
- ProviderEntitlement
range: EntitlementHolder
required: true

```
</details></div>