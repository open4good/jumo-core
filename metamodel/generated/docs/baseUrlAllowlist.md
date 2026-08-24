---
search:
  boost: 5.0
---

# Slot: baseUrlAllowlist

<div data-search-exclude markdown="1">



URI: [jumo:baseUrlAllowlist](https://jumo.dev/schemas/jumo-v1/baseUrlAllowlist)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpRegistrySourceSpec](McpRegistrySourceSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [McpRegistrySourceSpec](McpRegistrySourceSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [McpRegistrySourceSpec](McpRegistrySourceSpec.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^https://.+$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:baseUrlAllowlist |
| native | jumo:baseUrlAllowlist |




## LinkML Source

<details>
```yaml
name: baseUrlAllowlist
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: McpRegistrySourceSpec
domain_of:
- McpRegistrySourceSpec
range: string
required: true
multivalued: true
pattern: ^https://.+$
minimum_cardinality: 1

```
</details></div>