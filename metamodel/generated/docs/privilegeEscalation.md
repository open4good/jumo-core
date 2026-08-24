---
search:
  boost: 5.0
---

# Slot: privilegeEscalation

<div data-search-exclude markdown="1">



URI: [jumo:privilegeEscalation](https://jumo.dev/schemas/jumo-v1/privilegeEscalation)
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
**Must Equal:** `DENIED`

</details>











## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:privilegeEscalation |
| native | jumo:privilegeEscalation |




## LinkML Source

<details>
```yaml
name: privilegeEscalation
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkerIsolation
domain_of:
- WorkerIsolation
range: string
required: true
equals_string: DENIED

```
</details></div>