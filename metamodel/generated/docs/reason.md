---
search:
  boost: 5.0
---

# Slot: reason

<div data-search-exclude markdown="1">



URI: [jumo:reason](https://jumo.dev/schemas/jumo-v1/reason)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OrganizationRetentionHoldSpec](OrganizationRetentionHoldSpec.md) |  |  no  |
| [SelectionIntentRationale](SelectionIntentRationale.md) |  |  no  |
| [UpstreamToolEntry](UpstreamToolEntry.md) | Reason required when disposition is WITHHELD or QUARANTINED (Rego): exposing ... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [OrganizationRetentionHoldSpec](OrganizationRetentionHoldSpec.md), [SelectionIntentRationale](SelectionIntentRationale.md), [UpstreamToolEntry](UpstreamToolEntry.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:reason |
| native | jumo:reason |




## LinkML Source

<details>
```yaml
name: reason
domain_of:
- OrganizationRetentionHoldSpec
- SelectionIntentRationale
- UpstreamToolEntry
range: string

```
</details></div>