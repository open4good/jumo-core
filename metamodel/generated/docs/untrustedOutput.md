---
search:
  boost: 5.0
---

# Slot: untrustedOutput


_Whether this operation returns content originating outside the trust boundary._



<div data-search-exclude markdown="1">



URI: [jumo:untrustedOutput](https://jumo.dev/schemas/jumo-v1/untrustedOutput)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpBundleOperation](McpBundleOperation.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Boolean](Boolean.md) |
| Domain Of | [McpBundleOperation](McpBundleOperation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [McpBundleOperation](McpBundleOperation.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:untrustedOutput |
| native | jumo:untrustedOutput |




## LinkML Source

<details>
```yaml
name: untrustedOutput
description: Whether this operation returns content originating outside the trust
  boundary.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: McpBundleOperation
domain_of:
- McpBundleOperation
range: boolean
required: true

```
</details></div>