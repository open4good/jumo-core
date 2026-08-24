---
search:
  boost: 2.0
---


# Enum: CredentialSource



<div data-search-exclude markdown="1">

URI: [jumo:CredentialSource](https://jumo.dev/schemas/jumo-v1/CredentialSource)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| GATEWAY_TOKEN_ONLY | None |  |
| PLAN_SESSION_ONLY | None |  |
| OPENBAO_RENDERED_FILE | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [credentialSource](credentialSource.md) | MODEL_WORKER_PROCESS may consume only an OpenBao-rendered file bound to this ... |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: CredentialSource
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  GATEWAY_TOKEN_ONLY:
    text: GATEWAY_TOKEN_ONLY
  PLAN_SESSION_ONLY:
    text: PLAN_SESSION_ONLY
  OPENBAO_RENDERED_FILE:
    text: OPENBAO_RENDERED_FILE

```
</details>

</div>