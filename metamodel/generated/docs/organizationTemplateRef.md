---
search:
  boost: 5.0
---

# Slot: organizationTemplateRef


_Optional OrganizationTemplate this organization was instantiated from._



<div data-search-exclude markdown="1">



URI: [jumo:organizationTemplateRef](https://jumo.dev/schemas/jumo-v1/organizationTemplateRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OrganizationSpecBody](OrganizationSpecBody.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [OrganizationSpecBody](OrganizationSpecBody.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [OrganizationSpecBody](OrganizationSpecBody.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:organizationTemplateRef |
| native | jumo:organizationTemplateRef |




## LinkML Source

<details>
```yaml
name: organizationTemplateRef
description: Optional OrganizationTemplate this organization was instantiated from.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: OrganizationSpecBody
domain_of:
- OrganizationSpecBody
range: ContractReference
inlined: true

```
</details></div>