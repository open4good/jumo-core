---
search:
  boost: 5.0
---

# Slot: branchSha

<div data-search-exclude markdown="1">



URI: [jumo:branchSha](https://jumo.dev/schemas/jumo-v1/branchSha)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ChangeSetProjection](ChangeSetProjection.md) | Observed record of the single atomic PR ForgeApplier opened for a ChangeSetPr... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ChangeSetProjection](ChangeSetProjection.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ChangeSetProjection](ChangeSetProjection.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^[0-9a-f]{40}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:branchSha |
| native | jumo:branchSha |




## LinkML Source

<details>
```yaml
name: branchSha
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ChangeSetProjection
domain_of:
- ChangeSetProjection
range: string
pattern: ^[0-9a-f]{40}$

```
</details></div>