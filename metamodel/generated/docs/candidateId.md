---
search:
  boost: 5.0
---

# Slot: candidateId

<div data-search-exclude markdown="1">



URI: [jumo:candidateId](https://jumo.dev/schemas/jumo-v1/candidateId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpReconciliationCandidate](McpReconciliationCandidate.md) |  |  no  |
| [ImportedSchemaCandidate](ImportedSchemaCandidate.md) | Candidate LinkML class proposal derived from an external MCP tool schema |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [McpReconciliationCandidate](McpReconciliationCandidate.md), [ImportedSchemaCandidate](ImportedSchemaCandidate.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:candidateId |
| native | jumo:candidateId |




## LinkML Source

<details>
```yaml
name: candidateId
domain_of:
- McpReconciliationCandidate
- ImportedSchemaCandidate
range: string

```
</details></div>