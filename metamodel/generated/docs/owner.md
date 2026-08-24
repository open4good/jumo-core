---
search:
  boost: 5.0
---

# Slot: owner


_The canonical owner Principal. A literal TODO is rejected (Rego)._



<div data-search-exclude markdown="1">



URI: [jumo:owner](https://jumo.dev/schemas/jumo-v1/owner)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RealmTemplateSpec](RealmTemplateSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [RealmTemplateSpec](RealmTemplateSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [RealmTemplateSpec](RealmTemplateSpec.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^.{2,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:owner |
| native | jumo:owner |




## LinkML Source

<details>
```yaml
name: owner
description: The canonical owner Principal. A literal TODO is rejected (Rego).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: RealmTemplateSpec
domain_of:
- RealmTemplateSpec
range: string
required: true
pattern: ^.{2,}$

```
</details></div>