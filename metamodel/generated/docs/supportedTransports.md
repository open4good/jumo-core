---
search:
  boost: 5.0
---

# Slot: supportedTransports

<div data-search-exclude markdown="1">



URI: [jumo:supportedTransports](https://jumo.dev/schemas/jumo-v1/supportedTransports)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpProtocolProfile](McpProtocolProfile.md) | Supported MCP protocol capabilities and versions |  no  |
| [ConnectorPackageSpec](ConnectorPackageSpec.md) | Specification for a ConnectorPackage manifest |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [McpProtocolProfile](McpProtocolProfile.md), [ConnectorPackageSpec](ConnectorPackageSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:supportedTransports |
| native | jumo:supportedTransports |




## LinkML Source

<details>
```yaml
name: supportedTransports
domain_of:
- McpProtocolProfile
- ConnectorPackageSpec
range: string

```
</details></div>