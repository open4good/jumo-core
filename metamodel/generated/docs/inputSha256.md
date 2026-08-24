---
search:
  boost: 5.0
---

# Slot: inputSha256

<div data-search-exclude markdown="1">



URI: [jumo:inputSha256](https://jumo.dev/schemas/jumo-v1/inputSha256)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RoutingDecision](RoutingDecision.md) | Immutable policy-authorized adapter and cell selection for one recognized tur... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [RoutingDecision](RoutingDecision.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [RoutingDecision](RoutingDecision.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^sha256:[0-9a-f]{64}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:inputSha256 |
| native | jumo:inputSha256 |




## LinkML Source

<details>
```yaml
name: inputSha256
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: RoutingDecision
domain_of:
- RoutingDecision
range: string
required: true
pattern: ^sha256:[0-9a-f]{64}$

```
</details></div>