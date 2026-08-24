---
search:
  boost: 5.0
---

# Slot: user

<div data-search-exclude markdown="1">



URI: [jumo:user](https://jumo.dev/schemas/jumo-v1/user)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [PromptBody](PromptBody.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [PromptBody](PromptBody.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [PromptBody](PromptBody.md) |


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
| self | jumo:user |
| native | jumo:user |




## LinkML Source

<details>
```yaml
name: user
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: PromptBody
domain_of:
- PromptBody
range: string
required: true
pattern: ^.{1,}$

```
</details></div>