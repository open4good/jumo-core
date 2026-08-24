---
search:
  boost: 5.0
---

# Slot: holderRef

<div data-search-exclude markdown="1">



URI: [jumo:holderRef](https://jumo.dev/schemas/jumo-v1/holderRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProviderEntitlement](ProviderEntitlement.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ProviderEntitlement](ProviderEntitlement.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProviderEntitlement](ProviderEntitlement.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^.{2,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:holderRef |
| native | jumo:holderRef |




## LinkML Source

<details>
```yaml
name: holderRef
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProviderEntitlement
domain_of:
- ProviderEntitlement
range: string
required: true
pattern: ^.{2,}$

```
</details></div>