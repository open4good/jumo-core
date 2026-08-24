---
search:
  boost: 5.0
---

# Slot: jumoManaged

<div data-search-exclude markdown="1">



URI: [jumo:jumoManaged](https://jumo.dev/schemas/jumo-v1/jumoManaged)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [EntitlementUsePermissions](EntitlementUsePermissions.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [EntitlementUseContext](EntitlementUseContext.md) |
| Domain Of | [EntitlementUsePermissions](EntitlementUsePermissions.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [EntitlementUsePermissions](EntitlementUsePermissions.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:jumoManaged |
| native | jumo:jumoManaged |




## LinkML Source

<details>
```yaml
name: jumoManaged
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: EntitlementUsePermissions
domain_of:
- EntitlementUsePermissions
range: EntitlementUseContext
required: true
inlined: true

```
</details></div>