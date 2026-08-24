---
search:
  boost: 5.0
---

# Slot: artifactAllowlist

<div data-search-exclude markdown="1">



URI: [jumo:artifactAllowlist](https://jumo.dev/schemas/jumo-v1/artifactAllowlist)
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
| Multivalued | Yes |
| Minimum Cardinality | 1 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [RealmPublicationSpec](RealmPublicationSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:artifactAllowlist |
| native | jumo:artifactAllowlist |




## LinkML Source

<details>
```yaml
name: artifactAllowlist
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: RealmPublicationSpec
domain_of:
- RealmPublicationSpec
range: string
required: true
multivalued: true
minimum_cardinality: 1

```
</details></div>