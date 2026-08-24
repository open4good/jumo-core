---
search:
  boost: 5.0
---

# Slot: grantedCapabilities

<div data-search-exclude markdown="1">



URI: [jumo:grantedCapabilities](https://jumo.dev/schemas/jumo-v1/grantedCapabilities)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [CliInvocationRequest](CliInvocationRequest.md) | Structured WorkOrder execution invocation dispatched to a CLI worker containe... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [CliInvocationRequest](CliInvocationRequest.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [CliInvocationRequest](CliInvocationRequest.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:grantedCapabilities |
| native | jumo:grantedCapabilities |




## LinkML Source

<details>
```yaml
name: grantedCapabilities
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: CliInvocationRequest
domain_of:
- CliInvocationRequest
range: string
multivalued: true

```
</details></div>