---
search:
  boost: 5.0
---

# Slot: storageQuotaBytes

<div data-search-exclude markdown="1">



URI: [jumo:storageQuotaBytes](https://jumo.dev/schemas/jumo-v1/storageQuotaBytes)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [PersonalSpaceSpec](PersonalSpaceSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Integer](Integer.md) |
| Domain Of | [PersonalSpaceSpec](PersonalSpaceSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [PersonalSpaceSpec](PersonalSpaceSpec.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Minimum Value | 1048576 |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:storageQuotaBytes |
| native | jumo:storageQuotaBytes |




## LinkML Source

<details>
```yaml
name: storageQuotaBytes
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: PersonalSpaceSpec
domain_of:
- PersonalSpaceSpec
range: integer
required: true
minimum_value: 1048576

```
</details></div>