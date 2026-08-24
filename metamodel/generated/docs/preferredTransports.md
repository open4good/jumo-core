---
search:
  boost: 5.0
---

# Slot: preferredTransports

<div data-search-exclude markdown="1">



URI: [jumo:preferredTransports](https://jumo.dev/schemas/jumo-v1/preferredTransports)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AgentCard](AgentCard.md) | A2A v1 |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [AgentCardTransport](AgentCardTransport.md) |
| Domain Of | [AgentCard](AgentCard.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AgentCard](AgentCard.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:preferredTransports |
| native | jumo:preferredTransports |




## LinkML Source

<details>
```yaml
name: preferredTransports
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AgentCard
domain_of:
- AgentCard
range: AgentCardTransport
multivalued: true

```
</details></div>