---
search:
  boost: 5.0
---

# Slot: invocationId

<div data-search-exclude markdown="1">



URI: [jumo:invocationId](https://jumo.dev/schemas/jumo-v1/invocationId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [InvocationAuthorizationReceipt](InvocationAuthorizationReceipt.md) | Signed, single-use MCP invocation authorization (ADR-0055) |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
| Domain Of | [InvocationAuthorizationReceipt](InvocationAuthorizationReceipt.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [InvocationAuthorizationReceipt](InvocationAuthorizationReceipt.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:invocationId |
| native | jumo:invocationId |




## LinkML Source

<details>
```yaml
name: invocationId
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: InvocationAuthorizationReceipt
domain_of:
- InvocationAuthorizationReceipt
range: Identifier
required: true

```
</details></div>