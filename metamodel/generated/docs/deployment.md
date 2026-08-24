---
search:
  boost: 5.0
---

# Slot: deployment

<div data-search-exclude markdown="1">



URI: [jumo:deployment](https://jumo.dev/schemas/jumo-v1/deployment)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProjectSpec](ProjectSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [DeploymentTarget](DeploymentTarget.md) |
| Domain Of | [ProjectSpec](ProjectSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProjectSpec](ProjectSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:deployment |
| native | jumo:deployment |




## LinkML Source

<details>
```yaml
name: deployment
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProjectSpec
domain_of:
- ProjectSpec
range: DeploymentTarget

```
</details></div>