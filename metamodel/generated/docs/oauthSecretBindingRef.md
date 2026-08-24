---
search:
  boost: 5.0
---

# Slot: oauthSecretBindingRef

<div data-search-exclude markdown="1">



URI: [jumo:oauthSecretBindingRef](https://jumo.dev/schemas/jumo-v1/oauthSecretBindingRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RemoteMcpServiceSpec](RemoteMcpServiceSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [RemoteMcpServiceSpec](RemoteMcpServiceSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [RemoteMcpServiceSpec](RemoteMcpServiceSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:oauthSecretBindingRef |
| native | jumo:oauthSecretBindingRef |




## LinkML Source

<details>
```yaml
name: oauthSecretBindingRef
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: RemoteMcpServiceSpec
domain_of:
- RemoteMcpServiceSpec
range: ContractReference
required: true
inlined: true

```
</details></div>