---
search:
  boost: 5.0
---

# Slot: changesetSha256

<div data-search-exclude markdown="1">



URI: [jumo:changesetSha256](https://jumo.dev/schemas/jumo-v1/changesetSha256)
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
| Regex Pattern | `^[0-9a-f]{64}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:changesetSha256 |
| native | jumo:changesetSha256 |




## LinkML Source

<details>
```yaml
name: changesetSha256
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ChangeSetProjection
domain_of:
- ChangeSetProjection
range: string
pattern: ^[0-9a-f]{64}$

```
</details></div>