---
search:
  boost: 5.0
---

# Slot: baseDomain


_The parent domain subdomain is bound under, e.g. jumo.dev or a client-owned domain._



<div data-search-exclude markdown="1">



URI: [jumo:baseDomain](https://jumo.dev/schemas/jumo-v1/baseDomain)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RealmIngressBinding](RealmIngressBinding.md) | Per-tenant DNS routing for one RealmTemplate |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [RealmIngressBinding](RealmIngressBinding.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [RealmIngressBinding](RealmIngressBinding.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^[a-z0-9]([a-z0-9-]{0,61}[a-z0-9])?(\.[a-z0-9]([a-z0-9-]{0,61}[a-z0-9])?)+$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:baseDomain |
| native | jumo:baseDomain |




## LinkML Source

<details>
```yaml
name: baseDomain
description: The parent domain subdomain is bound under, e.g. jumo.dev or a client-owned
  domain.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: RealmIngressBinding
domain_of:
- RealmIngressBinding
range: string
required: true
pattern: ^[a-z0-9]([a-z0-9-]{0,61}[a-z0-9])?(\.[a-z0-9]([a-z0-9-]{0,61}[a-z0-9])?)+$

```
</details></div>