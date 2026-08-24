---
search:
  boost: 5.0
---

# Slot: contractPaths

<div data-search-exclude markdown="1">



URI: [jumo:contractPaths](https://jumo.dev/schemas/jumo-v1/contractPaths)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConnectorPackageSpec](ConnectorPackageSpec.md) | Specification for a ConnectorPackage manifest |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ConnectorPackageSpec](ConnectorPackageSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ConnectorPackageSpec](ConnectorPackageSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:contractPaths |
| native | jumo:contractPaths |




## LinkML Source

<details>
```yaml
name: contractPaths
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ConnectorPackageSpec
domain_of:
- ConnectorPackageSpec
range: string
multivalued: true

```
</details></div>