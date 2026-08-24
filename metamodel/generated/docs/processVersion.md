---
search:
  boost: 5.0
---

# Slot: processVersion

<div data-search-exclude markdown="1">



URI: [jumo:processVersion](https://jumo.dev/schemas/jumo-v1/processVersion)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProcessSpecBody](ProcessSpecBody.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ProcessSpecBody](ProcessSpecBody.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProcessSpecBody](ProcessSpecBody.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^\d+\.\d+\.\d+$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:processVersion |
| native | jumo:processVersion |




## LinkML Source

<details>
```yaml
name: processVersion
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProcessSpecBody
domain_of:
- ProcessSpecBody
range: string
required: true
pattern: ^\d+\.\d+\.\d+$

```
</details></div>