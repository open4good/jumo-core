---
search:
  boost: 5.0
---

# Slot: admittedEmails

<div data-search-exclude markdown="1">



URI: [jumo:admittedEmails](https://jumo.dev/schemas/jumo-v1/admittedEmails)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OrganizationEnrollmentPolicySpec](OrganizationEnrollmentPolicySpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [OrganizationEnrollmentPolicySpec](OrganizationEnrollmentPolicySpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [OrganizationEnrollmentPolicySpec](OrganizationEnrollmentPolicySpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:admittedEmails |
| native | jumo:admittedEmails |




## LinkML Source

<details>
```yaml
name: admittedEmails
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: OrganizationEnrollmentPolicySpec
domain_of:
- OrganizationEnrollmentPolicySpec
range: string
multivalued: true

```
</details></div>