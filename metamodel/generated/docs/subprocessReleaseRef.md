---
search:
  boost: 5.0
---

# Slot: subprocessReleaseRef


_The exact ProcessSpec release this SUBPROCESS step invokes (Rego required-on-SUBPROCESS check in execution.rego; must resolve, see references.rego)._



<div data-search-exclude markdown="1">



URI: [jumo:subprocessReleaseRef](https://jumo.dev/schemas/jumo-v1/subprocessReleaseRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProcessStep](ProcessStep.md) | One node in the process graph |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [ProcessStep](ProcessStep.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProcessStep](ProcessStep.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:subprocessReleaseRef |
| native | jumo:subprocessReleaseRef |




## LinkML Source

<details>
```yaml
name: subprocessReleaseRef
description: The exact ProcessSpec release this SUBPROCESS step invokes (Rego required-on-SUBPROCESS
  check in execution.rego; must resolve, see references.rego).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProcessStep
domain_of:
- ProcessStep
range: ContractReference
inlined: true

```
</details></div>