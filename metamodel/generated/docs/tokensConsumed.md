---
search:
  boost: 5.0
---

# Slot: tokensConsumed

<div data-search-exclude markdown="1">



URI: [jumo:tokensConsumed](https://jumo.dev/schemas/jumo-v1/tokensConsumed)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [CliInvocationResult](CliInvocationResult.md) | Sanitized final output payload, exit code, and evidence digest from a CLI exe... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Integer](Integer.md) |
| Domain Of | [CliInvocationResult](CliInvocationResult.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [CliInvocationResult](CliInvocationResult.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:tokensConsumed |
| native | jumo:tokensConsumed |




## LinkML Source

<details>
```yaml
name: tokensConsumed
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: CliInvocationResult
domain_of:
- CliInvocationResult
range: integer

```
</details></div>