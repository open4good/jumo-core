---
search:
  boost: 5.0
---

# Slot: workspace

<div data-search-exclude markdown="1">



URI: [jumo:workspace](https://jumo.dev/schemas/jumo-v1/workspace)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkerIsolation](WorkerIsolation.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [WorkerWorkspaceMode](WorkerWorkspaceMode.md) |
| Domain Of | [WorkerIsolation](WorkerIsolation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [WorkerIsolation](WorkerIsolation.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:workspace |
| native | jumo:workspace |




## LinkML Source

<details>
```yaml
name: workspace
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkerIsolation
domain_of:
- WorkerIsolation
range: WorkerWorkspaceMode
required: true

```
</details></div>