---
search:
  boost: 2.0
---


# Enum: VariableTrust




_UNTRUSTED carries content originating outside the trust boundary -- email bodies, web pages, transcripts, inbound channel messages. This is propagated provenance metadata, not by itself a security boundary (docs/concepts/positionnement-conceptuel.md#separation-instructions-donnees): the runtime fences these and never treats them as instructions, but authorization decisions are made on concrete argument values, not on this tag alone._



<div data-search-exclude markdown="1">

URI: [jumo:VariableTrust](https://jumo.dev/schemas/jumo-v1/VariableTrust)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| TRUSTED | None |  |
| UNTRUSTED | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [trust](trust.md) |  |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: VariableTrust
description: 'UNTRUSTED carries content originating outside the trust boundary --
  email bodies, web pages, transcripts, inbound channel messages. This is propagated
  provenance metadata, not by itself a security boundary (docs/concepts/positionnement-conceptuel.md#separation-instructions-donnees):
  the runtime fences these and never treats them as instructions, but authorization
  decisions are made on concrete argument values, not on this tag alone.'
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  TRUSTED:
    text: TRUSTED
  UNTRUSTED:
    text: UNTRUSTED

```
</details>

</div>