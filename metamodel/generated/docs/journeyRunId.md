---
search:
  boost: 5.0
---

# Slot: journeyRunId

<div data-search-exclude markdown="1">



URI: [jumo:journeyRunId](https://jumo.dev/schemas/jumo-v1/journeyRunId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AttentionSource](AttentionSource.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [AttentionSource](AttentionSource.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AttentionSource](AttentionSource.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^.{1,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:journeyRunId |
| native | jumo:journeyRunId |




## LinkML Source

<details>
```yaml
name: journeyRunId
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AttentionSource
domain_of:
- AttentionSource
range: string
pattern: ^.{1,}$

```
</details></div>