---
search:
  boost: 5.0
---

# Slot: format

<div data-search-exclude markdown="1">



URI: [jumo:format](https://jumo.dev/schemas/jumo-v1/format)
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


<details>
<summary>Additional Constraints</summary>
**Must Equal:** `OCI`

</details>











## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:format |
| native | jumo:format |




## LinkML Source

<details>
```yaml
name: format
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: McpBundleArtifact
domain_of:
- McpBundleArtifact
range: string
required: true
equals_string: OCI

```
</details></div>