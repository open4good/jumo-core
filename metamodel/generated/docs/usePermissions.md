---
search:
  boost: 5.0
---

# Slot: usePermissions

<div data-search-exclude markdown="1">



URI: [jumo:usePermissions](https://jumo.dev/schemas/jumo-v1/usePermissions)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProviderEntitlement](ProviderEntitlement.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [EntitlementUsePermissions](EntitlementUsePermissions.md) |
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
| self | jumo:usePermissions |
| native | jumo:usePermissions |




## LinkML Source

<details>
```yaml
name: usePermissions
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProviderEntitlement
domain_of:
- ProviderEntitlement
range: EntitlementUsePermissions
required: true
inlined: true

```
</details></div>