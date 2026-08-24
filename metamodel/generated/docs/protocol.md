---
search:
  boost: 5.0
---

# Slot: protocol

<div data-search-exclude markdown="1">



URI: [jumo:protocol](https://jumo.dev/schemas/jumo-v1/protocol)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ApiSurfaceSpec](ApiSurfaceSpec.md) | Specification of an ApiSurface contract |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ApiSurfaceSpec](ApiSurfaceSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `"HTTPS"` |
| Owner | [ApiSurfaceSpec](ApiSurfaceSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:protocol |
| native | jumo:protocol |




## LinkML Source

<details>
```yaml
name: protocol
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: '"HTTPS"'
owner: ApiSurfaceSpec
domain_of:
- ApiSurfaceSpec
range: string

```
</details></div>