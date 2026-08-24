---
search:
  boost: 5.0
---

# Slot: license

<div data-search-exclude markdown="1">



URI: [jumo:license](https://jumo.dev/schemas/jumo-v1/license)
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
| Regex Pattern | `^.{2,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:license |
| native | jumo:license |




## LinkML Source

<details>
```yaml
name: license
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: McpBundleArtifact
domain_of:
- McpBundleArtifact
range: string
required: true
pattern: ^.{2,}$

```
</details></div>