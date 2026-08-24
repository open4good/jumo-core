---
search:
  boost: 5.0
---

# Slot: repositoryBindings


_Zero or more Git resources governed by this Project. A repository-free Project remains valid._



<div data-search-exclude markdown="1">



URI: [jumo:repositoryBindings](https://jumo.dev/schemas/jumo-v1/repositoryBindings)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProjectSpec](ProjectSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [RepositoryBinding](RepositoryBinding.md) |
| Domain Of | [ProjectSpec](ProjectSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProjectSpec](ProjectSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:repositoryBindings |
| native | jumo:repositoryBindings |




## LinkML Source

<details>
```yaml
name: repositoryBindings
description: Zero or more Git resources governed by this Project. A repository-free
  Project remains valid.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProjectSpec
domain_of:
- ProjectSpec
range: RepositoryBinding
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>