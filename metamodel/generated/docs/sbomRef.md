---
search:
  boost: 5.0
---

# Slot: sbomRef

<div data-search-exclude markdown="1">



URI: [jumo:sbomRef](https://jumo.dev/schemas/jumo-v1/sbomRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpBundleArtifact](McpBundleArtifact.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [McpBundleArtifact](McpBundleArtifact.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [McpBundleArtifact](McpBundleArtifact.md) |


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
| self | jumo:sbomRef |
| native | jumo:sbomRef |




## LinkML Source

<details>
```yaml
name: sbomRef
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: McpBundleArtifact
domain_of:
- McpBundleArtifact
range: string
required: true
pattern: ^.{3,}$

```
</details></div>