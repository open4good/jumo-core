---
search:
  boost: 5.0
---

# Slot: planSignature

<div data-search-exclude markdown="1">



URI: [jumo:planSignature](https://jumo.dev/schemas/jumo-v1/planSignature)
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
| self | jumo:planSignature |
| native | jumo:planSignature |




## LinkML Source

<details>
```yaml
name: planSignature
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: SessionPlan
domain_of:
- SessionPlan
range: string
required: true

```
</details></div>