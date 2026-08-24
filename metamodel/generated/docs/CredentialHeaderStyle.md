---
search:
  boost: 2.0
---


# Enum: CredentialHeaderStyle




_How a ProviderAccount's activated credential is carried on an outbound request through provider-egress. Matches RequestShape's per-protocol header choice one for one._



<div data-search-exclude markdown="1">

URI: [jumo:CredentialHeaderStyle](https://jumo.dev/schemas/jumo-v1/CredentialHeaderStyle)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| AUTHORIZATION_BEARER | None |  |
| X_API_KEY | None |  |
| X_GOOG_API_KEY | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [credentialHeader](credentialHeader.md) |  |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: CredentialHeaderStyle
description: How a ProviderAccount's activated credential is carried on an outbound
  request through provider-egress. Matches RequestShape's per-protocol header choice
  one for one.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  AUTHORIZATION_BEARER:
    text: AUTHORIZATION_BEARER
  X_API_KEY:
    text: X_API_KEY
  X_GOOG_API_KEY:
    text: X_GOOG_API_KEY

```
</details>

</div>