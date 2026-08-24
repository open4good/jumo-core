---
search:
  boost: 5.0
---

# Slot: rootFilesystem

<div data-search-exclude markdown="1">



URI: [jumo:rootFilesystem](https://jumo.dev/schemas/jumo-v1/rootFilesystem)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkerIsolation](WorkerIsolation.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [WorkerIsolation](WorkerIsolation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [WorkerIsolation](WorkerIsolation.md) |


<details>
<summary>Additional Constraints</summary>
**Must Equal:** `READ_ONLY`

</details>











## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:rootFilesystem |
| native | jumo:rootFilesystem |




## LinkML Source

<details>
```yaml
name: rootFilesystem
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkerIsolation
domain_of:
- WorkerIsolation
range: string
required: true
equals_string: READ_ONLY

```
</details></div>