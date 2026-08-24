---
search:
  boost: 5.0
---

# Slot: of


_A generated LinkML class name (metamodel/generated/manifest.json), the same pattern ProcessFlow.payloadType and ProcessStep.signalType use. Must name a declared class (Rego). Mutually exclusive with payloadSchemaRef; exactly one of the two is required (Rego) -- a payload either has a generated class or it does not, never both._



<div data-search-exclude markdown="1">



URI: [jumo:of](https://jumo.dev/schemas/jumo-v1/of)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProjectionSpecBody](ProjectionSpecBody.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ProjectionSpecBody](ProjectionSpecBody.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProjectionSpecBody](ProjectionSpecBody.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:of |
| native | jumo:of |




## LinkML Source

<details>
```yaml
name: of
description: A generated LinkML class name (metamodel/generated/manifest.json), the
  same pattern ProcessFlow.payloadType and ProcessStep.signalType use. Must name a
  declared class (Rego). Mutually exclusive with payloadSchemaRef; exactly one of
  the two is required (Rego) -- a payload either has a generated class or it does
  not, never both.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProjectionSpecBody
domain_of:
- ProjectionSpecBody
range: string

```
</details></div>