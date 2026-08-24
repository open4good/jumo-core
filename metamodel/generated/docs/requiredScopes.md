---
search:
  boost: 5.0
---

# Slot: requiredScopes

<div data-search-exclude markdown="1">



URI: [jumo:requiredScopes](https://jumo.dev/schemas/jumo-v1/requiredScopes)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConnectorCredentialRequirement](ConnectorCredentialRequirement.md) | Declared credential requirements and delivery mode for a connector |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ConnectorCredentialRequirement](ConnectorCredentialRequirement.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ConnectorCredentialRequirement](ConnectorCredentialRequirement.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:requiredScopes |
| native | jumo:requiredScopes |




## LinkML Source

<details>
```yaml
name: requiredScopes
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ConnectorCredentialRequirement
domain_of:
- ConnectorCredentialRequirement
range: string
multivalued: true

```
</details></div>