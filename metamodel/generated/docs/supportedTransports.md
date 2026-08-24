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






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [McpProtocolProfile](McpProtocolProfile.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [McpProtocolProfile](McpProtocolProfile.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:supportedTransports |
| native | jumo:supportedTransports |




## LinkML Source

<details>
```yaml
name: supportedTransports
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: McpProtocolProfile
domain_of:
- McpProtocolProfile
range: string
multivalued: true

```
</details></div>