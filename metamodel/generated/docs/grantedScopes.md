---
search:
  boost: 5.0
---

# Slot: grantedScopes

<div data-search-exclude markdown="1">



URI: [jumo:grantedScopes](https://jumo.dev/schemas/jumo-v1/grantedScopes)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConnectorSessionBinding](ConnectorSessionBinding.md) | Active OAuth or API session binding for a Principal/Realm and target machine |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ConnectorSessionBinding](ConnectorSessionBinding.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ConnectorSessionBinding](ConnectorSessionBinding.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:grantedScopes |
| native | jumo:grantedScopes |




## LinkML Source

<details>
```yaml
name: grantedScopes
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ConnectorSessionBinding
domain_of:
- ConnectorSessionBinding
range: string
multivalued: true

```
</details></div>