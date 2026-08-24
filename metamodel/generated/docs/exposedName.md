---
search:
  boost: 5.0
---

# Slot: exposedName

<div data-search-exclude markdown="1">



URI: [jumo:exposedName](https://jumo.dev/schemas/jumo-v1/exposedName)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpBundleOperation](McpBundleOperation.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [McpBundleOperation](McpBundleOperation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [McpBundleOperation](McpBundleOperation.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^.{3,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:exposedName |
| native | jumo:exposedName |




## LinkML Source

<details>
```yaml
name: exposedName
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: McpBundleOperation
domain_of:
- McpBundleOperation
range: string
required: true
pattern: ^.{3,}$

```
</details></div>