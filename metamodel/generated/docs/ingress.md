---
search:
  boost: 5.0
---

# Slot: ingress


_Optional per-tenant subdomain routing. Absent for a Realm with no hosted hostname of its own, the same "field-free stays valid" shape as Project.repositoryBindings._



<div data-search-exclude markdown="1">



URI: [jumo:ingress](https://jumo.dev/schemas/jumo-v1/ingress)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RealmTemplateSpec](RealmTemplateSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [RealmIngressBinding](RealmIngressBinding.md) |
| Domain Of | [RealmTemplateSpec](RealmTemplateSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [RealmTemplateSpec](RealmTemplateSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:ingress |
| native | jumo:ingress |




## LinkML Source

<details>
```yaml
name: ingress
description: Optional per-tenant subdomain routing. Absent for a Realm with no hosted
  hostname of its own, the same "field-free stays valid" shape as Project.repositoryBindings.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: RealmTemplateSpec
domain_of:
- RealmTemplateSpec
range: RealmIngressBinding
inlined: true

```
</details></div>