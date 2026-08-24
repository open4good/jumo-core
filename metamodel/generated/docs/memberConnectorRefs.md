---
search:
  boost: 5.0
---

# Slot: memberConnectorRefs

<div data-search-exclude markdown="1">



URI: [jumo:memberConnectorRefs](https://jumo.dev/schemas/jumo-v1/memberConnectorRefs)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConnectorIntegrationSpec](ConnectorIntegrationSpec.md) | Specification for a ConnectorIntegration contract |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ConnectorIntegrationSpec](ConnectorIntegrationSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ConnectorIntegrationSpec](ConnectorIntegrationSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:memberConnectorRefs |
| native | jumo:memberConnectorRefs |




## LinkML Source

<details>
```yaml
name: memberConnectorRefs
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ConnectorIntegrationSpec
domain_of:
- ConnectorIntegrationSpec
range: string
multivalued: true

```
</details></div>