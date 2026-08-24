---
search:
  boost: 2.0
---


# Enum: ConsentState



<div data-search-exclude markdown="1">

URI: [jumo:ConsentState](https://jumo.dev/schemas/jumo-v1/ConsentState)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| NOT_APPLICABLE | None |  |
| UNKNOWN | None |  |
| REQUESTED | None |  |
| GRANTED | None |  |
| DECLINED | None |  |
| WITHDRAWN | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [consentState](consentState.md) | NOT_APPLICABLE for OWNER and MEMBER, who consented by joining the Realm |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: ConsentState
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  NOT_APPLICABLE:
    text: NOT_APPLICABLE
  UNKNOWN:
    text: UNKNOWN
  REQUESTED:
    text: REQUESTED
  GRANTED:
    text: GRANTED
  DECLINED:
    text: DECLINED
  WITHDRAWN:
    text: WITHDRAWN

```
</details>

</div>