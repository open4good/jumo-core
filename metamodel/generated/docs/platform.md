---
search:
  boost: 5.0
---

# Slot: platform

<div data-search-exclude markdown="1">



URI: [jumo:platform](https://jumo.dev/schemas/jumo-v1/platform)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [CliReleaseSpec](CliReleaseSpec.md) | Specification for a CliRelease contract |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [CliReleaseSpec](CliReleaseSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [CliReleaseSpec](CliReleaseSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:platform |
| native | jumo:platform |




## LinkML Source

<details>
```yaml
name: platform
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: CliReleaseSpec
domain_of:
- CliReleaseSpec
range: string
required: true

```
</details></div>