---
search:
  boost: 5.0
---

# Slot: organizationRef

<div data-search-exclude markdown="1">



URI: [jumo:organizationRef](https://jumo.dev/schemas/jumo-v1/organizationRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OrganizationAccessBindingSpec](OrganizationAccessBindingSpec.md) |  |  no  |
| [OrganizationEnrollmentPolicySpec](OrganizationEnrollmentPolicySpec.md) |  |  no  |
| [OrganizationAuditRetentionPolicySpec](OrganizationAuditRetentionPolicySpec.md) |  |  no  |
| [OrganizationRetentionHoldSpec](OrganizationRetentionHoldSpec.md) |  |  no  |
| [OrganizationPublicationPolicySpec](OrganizationPublicationPolicySpec.md) |  |  no  |
| [RealmPublicationSpec](RealmPublicationSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [OrganizationAccessBindingSpec](OrganizationAccessBindingSpec.md), [OrganizationEnrollmentPolicySpec](OrganizationEnrollmentPolicySpec.md), [OrganizationAuditRetentionPolicySpec](OrganizationAuditRetentionPolicySpec.md), [OrganizationRetentionHoldSpec](OrganizationRetentionHoldSpec.md), [OrganizationPublicationPolicySpec](OrganizationPublicationPolicySpec.md), [RealmPublicationSpec](RealmPublicationSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:organizationRef |
| native | jumo:organizationRef |




## LinkML Source

<details>
```yaml
name: organizationRef
domain_of:
- OrganizationAccessBindingSpec
- OrganizationEnrollmentPolicySpec
- OrganizationAuditRetentionPolicySpec
- OrganizationRetentionHoldSpec
- OrganizationPublicationPolicySpec
- RealmPublicationSpec
range: string

```
</details></div>