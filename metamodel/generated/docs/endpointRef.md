---
search:
  boost: 5.0
---

# Slot: endpointRef

<div data-search-exclude markdown="1">



URI: [jumo:endpointRef](https://jumo.dev/schemas/jumo-v1/endpointRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ExecutionCellTransport](ExecutionCellTransport.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ExecutionCellTransport](ExecutionCellTransport.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ExecutionCellTransport](ExecutionCellTransport.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^.{3,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:endpointRef |
| native | jumo:endpointRef |




## LinkML Source

<details>
```yaml
name: endpointRef
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ExecutionCellTransport
domain_of:
- ExecutionCellTransport
range: string
required: true
pattern: ^.{3,}$

```
</details></div>