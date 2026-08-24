---
search:
  boost: 5.0
---

# Slot: payloadSchemaRef


_A JSON Schema 2020-12 document declared under a corpus schemas directory (e.g. jumo-core:.jumo/schemas), for a step payload with no generated LinkML class of its own -- the metamodel names no such instance-specific class (canonical decision 15). Must resolve to a declared schema file (Rego). Mutually exclusive with of._



<div data-search-exclude markdown="1">



URI: [jumo:payloadSchemaRef](https://jumo.dev/schemas/jumo-v1/payloadSchemaRef)
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
| self | jumo:payloadSchemaRef |
| native | jumo:payloadSchemaRef |




## LinkML Source

<details>
```yaml
name: payloadSchemaRef
description: A JSON Schema 2020-12 document declared under a corpus schemas directory
  (e.g. jumo-core:.jumo/schemas), for a step payload with no generated LinkML class
  of its own -- the metamodel names no such instance-specific class (canonical decision
  15). Must resolve to a declared schema file (Rego). Mutually exclusive with of.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProjectionSpecBody
domain_of:
- ProjectionSpecBody
range: string

```
</details></div>