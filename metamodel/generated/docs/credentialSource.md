---
search:
  boost: 5.0
---

# Slot: credentialSource


_MODEL_WORKER_PROCESS may consume only an OpenBao-rendered file bound to this substrate; no environment value, repository mount, or ambient credential is permitted._



<div data-search-exclude markdown="1">



URI: [jumo:credentialSource](https://jumo.dev/schemas/jumo-v1/credentialSource)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkerModelAccess](WorkerModelAccess.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [CredentialSource](CredentialSource.md) |
| Domain Of | [WorkerModelAccess](WorkerModelAccess.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [WorkerModelAccess](WorkerModelAccess.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:credentialSource |
| native | jumo:credentialSource |




## LinkML Source

<details>
```yaml
name: credentialSource
description: MODEL_WORKER_PROCESS may consume only an OpenBao-rendered file bound
  to this substrate; no environment value, repository mount, or ambient credential
  is permitted.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkerModelAccess
domain_of:
- WorkerModelAccess
range: CredentialSource
required: true

```
</details></div>