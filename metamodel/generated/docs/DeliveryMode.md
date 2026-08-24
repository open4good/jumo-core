---
search:
  boost: 2.0
---


# Enum: DeliveryMode




_How a result or an AttentionItem reaches the human. Shared by Practice and AttentionItem so a rhythm and the items it carries cannot describe delivery in two vocabularies. Pausing delivery never deletes the canonical event._



<div data-search-exclude markdown="1">

URI: [jumo:DeliveryMode](https://jumo.dev/schemas/jumo-v1/DeliveryMode)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| LIVE | None |  |
| DIGEST | None |  |
| ESCALATION_ONLY | None |  |
| DELEGATED | None |  |
| MUTED_UNTIL | None |  |
| QUIET_HOURS | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [delivery](delivery.md) | How the result reaches the human |
| [deliveryMode](deliveryMode.md) |  |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: DeliveryMode
description: How a result or an AttentionItem reaches the human. Shared by Practice
  and AttentionItem so a rhythm and the items it carries cannot describe delivery
  in two vocabularies. Pausing delivery never deletes the canonical event.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  LIVE:
    text: LIVE
  DIGEST:
    text: DIGEST
  ESCALATION_ONLY:
    text: ESCALATION_ONLY
  DELEGATED:
    text: DELEGATED
  MUTED_UNTIL:
    text: MUTED_UNTIL
  QUIET_HOURS:
    text: QUIET_HOURS

```
</details>

</div>