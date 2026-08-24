---
search:
  boost: 5.0
---

# Slot: allowedAdapters

<div data-search-exclude markdown="1">



URI: [jumo:allowedAdapters](https://jumo.dev/schemas/jumo-v1/allowedAdapters)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OrganizationPublicationPolicySpec](OrganizationPublicationPolicySpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [InteroperabilityAdapter](InteroperabilityAdapter.md) |
| Domain Of | [OrganizationPublicationPolicySpec](OrganizationPublicationPolicySpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [OrganizationPublicationPolicySpec](OrganizationPublicationPolicySpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:allowedAdapters |
| native | jumo:allowedAdapters |




## LinkML Source

<details>
```yaml
name: allowedAdapters
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: OrganizationPublicationPolicySpec
domain_of:
- OrganizationPublicationPolicySpec
range: InteroperabilityAdapter
required: true
multivalued: true
minimum_cardinality: 1

```
</details></div>