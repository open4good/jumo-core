---
search:
  boost: 2.0
---


# Enum: ExecutionCellCredentialCustody




_Where an ExecutionCell's mTLS client key lives after the certificate ceremony. LOCAL_CELL_SEALED is the only custody corpus.cell.credential-custody (execution.rego) permits; JUMO_STORED names the real, deliberately-refused alternative (the control plane holding the guest's private key), so the enum stays a genuine choice and the Rego rule stays the authority rather than the schema silently making it unreachable._



<div data-search-exclude markdown="1">

URI: [jumo:ExecutionCellCredentialCustody](https://jumo.dev/schemas/jumo-v1/ExecutionCellCredentialCustody)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| LOCAL_CELL_SEALED | None |  |
| JUMO_STORED | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [credentialCustody](credentialCustody.md) | Must equal LOCAL_CELL_SEALED (Rego, corpus |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: ExecutionCellCredentialCustody
description: Where an ExecutionCell's mTLS client key lives after the certificate
  ceremony. LOCAL_CELL_SEALED is the only custody corpus.cell.credential-custody (execution.rego)
  permits; JUMO_STORED names the real, deliberately-refused alternative (the control
  plane holding the guest's private key), so the enum stays a genuine choice and the
  Rego rule stays the authority rather than the schema silently making it unreachable.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  LOCAL_CELL_SEALED:
    text: LOCAL_CELL_SEALED
  JUMO_STORED:
    text: JUMO_STORED

```
</details>

</div>