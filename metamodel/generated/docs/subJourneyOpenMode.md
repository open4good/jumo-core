---
search:
  boost: 5.0
---

# Slot: subJourneyOpenMode


_How a SUB_JOURNEY step opens its child run; meaningless on any other stepKind._



<div data-search-exclude markdown="1">



URI: [jumo:subJourneyOpenMode](https://jumo.dev/schemas/jumo-v1/subJourneyOpenMode)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [JourneyPresentation](JourneyPresentation.md) | Decorative and layout-only: how a journey or step is drawn, never what it may... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [SubJourneyOpenMode](SubJourneyOpenMode.md) |
| Domain Of | [JourneyPresentation](JourneyPresentation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [JourneyPresentation](JourneyPresentation.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:subJourneyOpenMode |
| native | jumo:subJourneyOpenMode |




## LinkML Source

<details>
```yaml
name: subJourneyOpenMode
description: How a SUB_JOURNEY step opens its child run; meaningless on any other
  stepKind.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: JourneyPresentation
domain_of:
- JourneyPresentation
range: SubJourneyOpenMode

```
</details></div>