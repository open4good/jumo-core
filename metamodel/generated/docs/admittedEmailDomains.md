---
search:
  boost: 5.0
---

# Slot: admittedEmailDomains

<div data-search-exclude markdown="1">



URI: [jumo:admittedEmailDomains](https://jumo.dev/schemas/jumo-v1/admittedEmailDomains)
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
| self | jumo:admittedEmailDomains |
| native | jumo:admittedEmailDomains |




## LinkML Source

<details>
```yaml
name: admittedEmailDomains
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: OrganizationEnrollmentPolicySpec
domain_of:
- OrganizationEnrollmentPolicySpec
range: string
multivalued: true

```
</details></div>