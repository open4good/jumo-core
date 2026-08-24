---
search:
  boost: 5.0
---

# Slot: environmentVariable

<div data-search-exclude markdown="1">



URI: [jumo:environmentVariable](https://jumo.dev/schemas/jumo-v1/environmentVariable)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [SecretInjection](SecretInjection.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [SecretInjection](SecretInjection.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [SecretInjection](SecretInjection.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^[A-Z][A-Z0-9_]{1,127}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:environmentVariable |
| native | jumo:environmentVariable |




## LinkML Source

<details>
```yaml
name: environmentVariable
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: SecretInjection
domain_of:
- SecretInjection
range: string
pattern: ^[A-Z][A-Z0-9_]{1,127}$

```
</details></div>