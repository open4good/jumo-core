---
search:
  boost: 5.0
---

# Slot: documentTemplateRef


_The DocumentTemplate that renders the document. Must resolve to a declared template rendering the same kind (Rego). Absent while a journey emits a document this vocabulary cannot yet describe -- the renderer refuses such an emission rather than guessing, and the journey keeps a named branch until a template can replace it, which is exactly what the boundary allowlist records._



<div data-search-exclude markdown="1">



URI: [jumo:documentTemplateRef](https://jumo.dev/schemas/jumo-v1/documentTemplateRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneyEmission](AssistedJourneyEmission.md) | The declarative replacement for a per-journey emission branch |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [AssistedJourneyEmission](AssistedJourneyEmission.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AssistedJourneyEmission](AssistedJourneyEmission.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:documentTemplateRef |
| native | jumo:documentTemplateRef |




## LinkML Source

<details>
```yaml
name: documentTemplateRef
description: The DocumentTemplate that renders the document. Must resolve to a declared
  template rendering the same kind (Rego). Absent while a journey emits a document
  this vocabulary cannot yet describe -- the renderer refuses such an emission rather
  than guessing, and the journey keeps a named branch until a template can replace
  it, which is exactly what the boundary allowlist records.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneyEmission
domain_of:
- AssistedJourneyEmission
range: ContractReference
inlined: true

```
</details></div>