---
search:
  boost: 5.0
---

# Slot: engine

<div data-search-exclude markdown="1">



URI: [jumo:engine](https://jumo.dev/schemas/jumo-v1/engine)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [PromptBody](PromptBody.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [PromptEngine](PromptEngine.md) |
| Domain Of | [PromptBody](PromptBody.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [PromptBody](PromptBody.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:engine |
| native | jumo:engine |




## LinkML Source

<details>
```yaml
name: engine
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: PromptBody
domain_of:
- PromptBody
range: PromptEngine
required: true

```
</details></div>