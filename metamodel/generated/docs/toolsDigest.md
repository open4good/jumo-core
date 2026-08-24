---
search:
  boost: 5.0
---

# Slot: toolsDigest

<div data-search-exclude markdown="1">



URI: [jumo:toolsDigest](https://jumo.dev/schemas/jumo-v1/toolsDigest)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [InvocationAuthorizationReceipt](InvocationAuthorizationReceipt.md) | Signed, single-use MCP invocation authorization (ADR-0055) |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [InvocationAuthorizationReceipt](InvocationAuthorizationReceipt.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [InvocationAuthorizationReceipt](InvocationAuthorizationReceipt.md) |


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
| self | jumo:toolsDigest |
| native | jumo:toolsDigest |




## LinkML Source

<details>
```yaml
name: toolsDigest
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: InvocationAuthorizationReceipt
domain_of:
- InvocationAuthorizationReceipt
range: string
required: true
pattern: ^sha256:[0-9a-f]{64}$

```
</details></div>