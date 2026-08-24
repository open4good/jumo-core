---
search:
  boost: 5.0
---

# Slot: layer

<div data-search-exclude markdown="1">



URI: [jumo:layer](https://jumo.dev/schemas/jumo-v1/layer)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [LayerOverride](LayerOverride.md) | Explicit declaration of an overridden document from a lower layer or imported... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [LayerOverride](LayerOverride.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [LayerOverride](LayerOverride.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:layer |
| native | jumo:layer |




## LinkML Source

<details>
```yaml
name: layer
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: LayerOverride
domain_of:
- LayerOverride
range: string
required: true

```
</details></div>