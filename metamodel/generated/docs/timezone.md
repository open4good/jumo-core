---
search:
  boost: 5.0
---

# Slot: timezone

<div data-search-exclude markdown="1">



URI: [jumo:timezone](https://jumo.dev/schemas/jumo-v1/timezone)
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
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [RealmTemplateSpec](RealmTemplateSpec.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^.{3,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:timezone |
| native | jumo:timezone |




## LinkML Source

<details>
```yaml
name: timezone
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: RealmTemplateSpec
domain_of:
- RealmTemplateSpec
range: string
pattern: ^.{3,}$

```
</details></div>