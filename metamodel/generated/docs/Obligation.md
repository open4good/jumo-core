---
search:
  boost: 2.0
---


# Enum: Obligation



<div data-search-exclude markdown="1">

URI: [jumo:Obligation](https://jumo.dev/schemas/jumo-v1/Obligation)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| STEP_UP_AUTHENTICATION | None |  |
| HUMAN_OWNER_APPROVAL | None |  |
| INDEPENDENT_VERIFICATION | None |  |
| DISCLOSE_AGENT_IDENTITY | None |  |
| RETAIN_PROVENANCE | None |  |
| REDACT_SECRETS | None |  |
| PREVIEW_BEFORE_SEND | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [requiredObligations](requiredObligations.md) | Additional obligations the caller must satisfy before this step is entered, s... |
| [obligations](obligations.md) |  |
| [mandatoryObligations](mandatoryObligations.md) |  |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: Obligation
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  STEP_UP_AUTHENTICATION:
    text: STEP_UP_AUTHENTICATION
  HUMAN_OWNER_APPROVAL:
    text: HUMAN_OWNER_APPROVAL
  INDEPENDENT_VERIFICATION:
    text: INDEPENDENT_VERIFICATION
  DISCLOSE_AGENT_IDENTITY:
    text: DISCLOSE_AGENT_IDENTITY
  RETAIN_PROVENANCE:
    text: RETAIN_PROVENANCE
  REDACT_SECRETS:
    text: REDACT_SECRETS
  PREVIEW_BEFORE_SEND:
    text: PREVIEW_BEFORE_SEND

```
</details>

</div>