---
search:
  boost: 5.0
---

# Slot: validated

<div data-search-exclude markdown="1">



URI: [jumo:validated](https://jumo.dev/schemas/jumo-v1/validated)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [SchemaBoundPayload](SchemaBoundPayload.md) | Bounded dynamic JSON payload guaranteed by a validated SchemaBinding |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Boolean](Boolean.md) |
| Domain Of | [SchemaBoundPayload](SchemaBoundPayload.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `false` |
| Owner | [SchemaBoundPayload](SchemaBoundPayload.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:validated |
| native | jumo:validated |




## LinkML Source

<details>
```yaml
name: validated
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: 'false'
owner: SchemaBoundPayload
domain_of:
- SchemaBoundPayload
range: boolean

```
</details></div>