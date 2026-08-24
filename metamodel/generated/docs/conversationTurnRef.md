---
search:
  boost: 5.0
---

# Slot: conversationTurnRef

<div data-search-exclude markdown="1">



URI: [jumo:conversationTurnRef](https://jumo.dev/schemas/jumo-v1/conversationTurnRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RoutingDecision](RoutingDecision.md) | Immutable policy-authorized adapter and cell selection for one recognized tur... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
| Domain Of | [RoutingDecision](RoutingDecision.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [RoutingDecision](RoutingDecision.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:conversationTurnRef |
| native | jumo:conversationTurnRef |




## LinkML Source

<details>
```yaml
name: conversationTurnRef
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: RoutingDecision
domain_of:
- RoutingDecision
range: Identifier
required: true

```
</details></div>