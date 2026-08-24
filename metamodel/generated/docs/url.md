---
search:
  boost: 5.0
---

# Slot: url

<div data-search-exclude markdown="1">



URI: [jumo:url](https://jumo.dev/schemas/jumo-v1/url)
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
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ChangeSetProjection](ChangeSetProjection.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:url |
| native | jumo:url |




## LinkML Source

<details>
```yaml
name: url
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ChangeSetProjection
domain_of:
- ChangeSetProjection
range: string
required: true

```
</details></div>