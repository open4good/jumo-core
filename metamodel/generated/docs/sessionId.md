---
search:
  boost: 5.0
---

# Slot: sessionId

<div data-search-exclude markdown="1">



URI: [jumo:sessionId](https://jumo.dev/schemas/jumo-v1/sessionId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConnectorSessionBinding](ConnectorSessionBinding.md) | Active OAuth or API session binding for a Principal/Realm and target machine |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
| Domain Of | [ConnectorSessionBinding](ConnectorSessionBinding.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
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
| self | jumo:sessionId |
| native | jumo:sessionId |




## LinkML Source

<details>
```yaml
name: sessionId
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ConnectorSessionBinding
domain_of:
- ConnectorSessionBinding
range: Identifier
required: true

```
</details></div>