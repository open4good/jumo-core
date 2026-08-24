---
search:
  boost: 5.0
---

# Slot: publicHandle

<div data-search-exclude markdown="1">



URI: [jumo:publicHandle](https://jumo.dev/schemas/jumo-v1/publicHandle)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RealmPublicationSpec](RealmPublicationSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [RealmPublicationSpec](RealmPublicationSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [RealmPublicationSpec](RealmPublicationSpec.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^[a-z0-9-_]{2,64}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:publicHandle |
| native | jumo:publicHandle |




## LinkML Source

<details>
```yaml
name: publicHandle
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: RealmPublicationSpec
domain_of:
- RealmPublicationSpec
range: string
required: true
pattern: ^[a-z0-9-_]{2,64}$

```
</details></div>