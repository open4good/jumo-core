---
search:
  boost: 5.0
---

# Slot: nickname

<div data-search-exclude markdown="1">



URI: [jumo:nickname](https://jumo.dev/schemas/jumo-v1/nickname)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OrganizationEnrollmentRequest](OrganizationEnrollmentRequest.md) | First, identity-admitted onboarding payload |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
| Domain Of | [OrganizationEnrollmentRequest](OrganizationEnrollmentRequest.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [OrganizationEnrollmentRequest](OrganizationEnrollmentRequest.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:nickname |
| native | jumo:nickname |




## LinkML Source

<details>
```yaml
name: nickname
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: OrganizationEnrollmentRequest
domain_of:
- OrganizationEnrollmentRequest
range: Identifier
required: true

```
</details></div>