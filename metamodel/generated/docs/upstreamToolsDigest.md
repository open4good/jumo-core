---
search:
  boost: 5.0
---

# Slot: upstreamToolsDigest


_Digest of the complete discovered tool inventory of the one upstream connector accepted for this plan, using mcp-tools-jcs-v1. Signed with the plan so a gateway can refuse a later upstream inventory change before dispatch._



<div data-search-exclude markdown="1">



URI: [jumo:upstreamToolsDigest](https://jumo.dev/schemas/jumo-v1/upstreamToolsDigest)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [SessionPlan](SessionPlan.md) | Signed MCP gateway session plan scoped to one ExecutionCellLease (mcp-gateway... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [SessionPlan](SessionPlan.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [SessionPlan](SessionPlan.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:upstreamToolsDigest |
| native | jumo:upstreamToolsDigest |




## LinkML Source

<details>
```yaml
name: upstreamToolsDigest
description: Digest of the complete discovered tool inventory of the one upstream
  connector accepted for this plan, using mcp-tools-jcs-v1. Signed with the plan so
  a gateway can refuse a later upstream inventory change before dispatch.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: SessionPlan
domain_of:
- SessionPlan
range: string
required: true

```
</details></div>