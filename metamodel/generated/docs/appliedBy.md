---
search:
  boost: 5.0
---

# Slot: appliedBy


_The trusted component that applies the effect. Must not be the component that proposes it -- the prompt-injection boundary._



<div data-search-exclude markdown="1">



URI: [jumo:appliedBy](https://jumo.dev/schemas/jumo-v1/appliedBy)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ActionCapability](ActionCapability.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ActionCapability](ActionCapability.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ActionCapability](ActionCapability.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:appliedBy |
| native | jumo:appliedBy |




## LinkML Source

<details>
```yaml
name: appliedBy
description: The trusted component that applies the effect. Must not be the component
  that proposes it -- the prompt-injection boundary.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ActionCapability
domain_of:
- ActionCapability
range: string

```
</details></div>