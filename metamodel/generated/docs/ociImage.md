---
search:
  boost: 5.0
---

# Slot: ociImage

<div data-search-exclude markdown="1">



URI: [jumo:ociImage](https://jumo.dev/schemas/jumo-v1/ociImage)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [CliReleaseSpec](CliReleaseSpec.md) | Specification for a CliRelease contract |  no  |
| [McpServerDescriptor](McpServerDescriptor.md) | Descriptor specifying MCP server transport and connection target |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [CliReleaseSpec](CliReleaseSpec.md), [McpServerDescriptor](McpServerDescriptor.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:ociImage |
| native | jumo:ociImage |




## LinkML Source

<details>
```yaml
name: ociImage
domain_of:
- CliReleaseSpec
- McpServerDescriptor
range: string

```
</details></div>