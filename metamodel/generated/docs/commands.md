---
search:
  boost: 5.0
---

# Slot: commands

<div data-search-exclude markdown="1">



URI: [jumo:commands](https://jumo.dev/schemas/jumo-v1/commands)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [EntityFacet](EntityFacet.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [EntityFacet](EntityFacet.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [EntityFacet](EntityFacet.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^[A-Z][A-Z_]*$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:commands |
| native | jumo:commands |




## LinkML Source

<details>
```yaml
name: commands
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: EntityFacet
domain_of:
- EntityFacet
range: string
multivalued: true
pattern: ^[A-Z][A-Z_]*$

```
</details></div>