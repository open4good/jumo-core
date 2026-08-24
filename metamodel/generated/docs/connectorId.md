---
search:
  boost: 5.0
---

# Slot: connectorId

<div data-search-exclude markdown="1">



URI: [jumo:connectorId](https://jumo.dev/schemas/jumo-v1/connectorId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConnectorPackageSpec](ConnectorPackageSpec.md) | Specification for a ConnectorPackage manifest |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
| Domain Of | [ConnectorPackageSpec](ConnectorPackageSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
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
| self | jumo:connectorId |
| native | jumo:connectorId |




## LinkML Source

<details>
```yaml
name: connectorId
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ConnectorPackageSpec
domain_of:
- ConnectorPackageSpec
range: Identifier
required: true

```
</details></div>