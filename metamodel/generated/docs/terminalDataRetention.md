---
search:
  boost: 5.0
---

# Slot: terminalDataRetention

<div data-search-exclude markdown="1">



URI: [jumo:terminalDataRetention](https://jumo.dev/schemas/jumo-v1/terminalDataRetention)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OrganizationAuditRetentionPolicySpec](OrganizationAuditRetentionPolicySpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Duration](Duration.md) |
| Domain Of | [OrganizationAuditRetentionPolicySpec](OrganizationAuditRetentionPolicySpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [OrganizationAuditRetentionPolicySpec](OrganizationAuditRetentionPolicySpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:terminalDataRetention |
| native | jumo:terminalDataRetention |




## LinkML Source

<details>
```yaml
name: terminalDataRetention
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: OrganizationAuditRetentionPolicySpec
domain_of:
- OrganizationAuditRetentionPolicySpec
range: Duration
required: true

```
</details></div>