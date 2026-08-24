---
search:
  boost: 5.0
---

# Slot: assessedAt

<div data-search-exclude markdown="1">



URI: [jumo:assessedAt](https://jumo.dev/schemas/jumo-v1/assessedAt)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [DataProtectionImpactAssessment](DataProtectionImpactAssessment.md) |  |  no  |
| [ControlAssessment](ControlAssessment.md) | Recognized result of assessing a Control against a ComplianceProfile, with ob... |  no  |
| [McpCatalogAssessment](McpCatalogAssessment.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [DataProtectionImpactAssessment](DataProtectionImpactAssessment.md), [ControlAssessment](ControlAssessment.md), [McpCatalogAssessment](McpCatalogAssessment.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:assessedAt |
| native | jumo:assessedAt |




## LinkML Source

<details>
```yaml
name: assessedAt
domain_of:
- DataProtectionImpactAssessment
- ControlAssessment
- McpCatalogAssessment
range: string

```
</details></div>