---
search:
  boost: 5.0
---

# Slot: dataCategories

<div data-search-exclude markdown="1">



URI: [jumo:dataCategories](https://jumo.dev/schemas/jumo-v1/dataCategories)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProcessingRegisterEntry](ProcessingRegisterEntry.md) | RGPD art |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ProcessingRegisterEntry](ProcessingRegisterEntry.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProcessingRegisterEntry](ProcessingRegisterEntry.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:dataCategories |
| native | jumo:dataCategories |




## LinkML Source

<details>
```yaml
name: dataCategories
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProcessingRegisterEntry
domain_of:
- ProcessingRegisterEntry
range: string
multivalued: true

```
</details></div>