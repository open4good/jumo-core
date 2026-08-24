---
search:
  boost: 5.0
---

# Slot: testPlanRefs

<div data-search-exclude markdown="1">



URI: [jumo:testPlanRefs](https://jumo.dev/schemas/jumo-v1/testPlanRefs)
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
| self | jumo:testPlanRefs |
| native | jumo:testPlanRefs |




## LinkML Source

<details>
```yaml
name: testPlanRefs
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ConnectorPackageSpec
domain_of:
- ConnectorPackageSpec
range: string
multivalued: true

```
</details></div>