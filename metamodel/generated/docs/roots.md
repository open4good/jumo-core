---
search:
  boost: 5.0
---

# Slot: roots

<div data-search-exclude markdown="1">



URI: [jumo:roots](https://jumo.dev/schemas/jumo-v1/roots)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProjectDocumentation](ProjectDocumentation.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [DocumentationRoot](DocumentationRoot.md) |
| Domain Of | [ProjectDocumentation](ProjectDocumentation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProjectDocumentation](ProjectDocumentation.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:roots |
| native | jumo:roots |




## LinkML Source

<details>
```yaml
name: roots
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProjectDocumentation
domain_of:
- ProjectDocumentation
range: DocumentationRoot
required: true
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 1

```
</details></div>