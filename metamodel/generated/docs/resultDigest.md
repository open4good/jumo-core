---
search:
  boost: 5.0
---

# Slot: resultDigest

<div data-search-exclude markdown="1">



URI: [jumo:resultDigest](https://jumo.dev/schemas/jumo-v1/resultDigest)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpInvocationOutcome](McpInvocationOutcome.md) | Sanitized terminal outcome for one dispatched MCP invocation |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [McpInvocationOutcome](McpInvocationOutcome.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [McpInvocationOutcome](McpInvocationOutcome.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:resultDigest |
| native | jumo:resultDigest |




## LinkML Source

<details>
```yaml
name: resultDigest
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: McpInvocationOutcome
domain_of:
- McpInvocationOutcome
range: string

```
</details></div>