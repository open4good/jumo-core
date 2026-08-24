---
search:
  boost: 5.0
---

# Slot: flows

<div data-search-exclude markdown="1">



URI: [jumo:flows](https://jumo.dev/schemas/jumo-v1/flows)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProcessSpecBody](ProcessSpecBody.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ProcessFlow](ProcessFlow.md) |
| Domain Of | [ProcessSpecBody](ProcessSpecBody.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProcessSpecBody](ProcessSpecBody.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:flows |
| native | jumo:flows |




## LinkML Source

<details>
```yaml
name: flows
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProcessSpecBody
domain_of:
- ProcessSpecBody
range: ProcessFlow
required: true
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 1

```
</details></div>