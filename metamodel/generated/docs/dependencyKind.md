---
search:
  boost: 5.0
---

# Slot: dependencyKind


_Open vocabulary naming the managed dependency (e.g. resource-sharing, prerequisite, simultaneity, decomposition -- Malone & Crowston's categories). Not an enum: the catalog of dependency kinds is expected to grow with experience, and closing it here would recreate the single-mode rigidity this redesign removes._



<div data-search-exclude markdown="1">



URI: [jumo:dependencyKind](https://jumo.dev/schemas/jumo-v1/dependencyKind)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [CoordinationMechanismBinding](CoordinationMechanismBinding.md) | One coordination mechanism scoped to the dependency it actually governs, repl... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [CoordinationMechanismBinding](CoordinationMechanismBinding.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [CoordinationMechanismBinding](CoordinationMechanismBinding.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:dependencyKind |
| native | jumo:dependencyKind |




## LinkML Source

<details>
```yaml
name: dependencyKind
description: 'Open vocabulary naming the managed dependency (e.g. resource-sharing,
  prerequisite, simultaneity, decomposition -- Malone & Crowston''s categories). Not
  an enum: the catalog of dependency kinds is expected to grow with experience, and
  closing it here would recreate the single-mode rigidity this redesign removes.'
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: CoordinationMechanismBinding
domain_of:
- CoordinationMechanismBinding
range: string

```
</details></div>