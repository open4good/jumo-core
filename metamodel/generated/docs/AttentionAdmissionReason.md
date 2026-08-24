---
search:
  boost: 2.0
---


# Enum: AttentionAdmissionReason



<div data-search-exclude markdown="1">

URI: [jumo:AttentionAdmissionReason](https://jumo.dev/schemas/jumo-v1/AttentionAdmissionReason)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| NO_ELIGIBLE_ROLE | None |  |
| ADMISSION_DECLINED | None |  |
| POLICY_DENIED | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [admissionReason](admissionReason.md) | Required on ADMISSION_REFUSED (Rego) |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: AttentionAdmissionReason
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  NO_ELIGIBLE_ROLE:
    text: NO_ELIGIBLE_ROLE
  ADMISSION_DECLINED:
    text: ADMISSION_DECLINED
  POLICY_DENIED:
    text: POLICY_DENIED

```
</details>

</div>