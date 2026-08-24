---
search:
  boost: 2.0
---


# Enum: WireProtocol




_The upstream request/response shape a ProviderPlatform speaks (provider-platform-catalog lot). Named after the wire shape, never a vendor account, so an aggregator can share a protocol with the platform it fronts._



<div data-search-exclude markdown="1">

URI: [jumo:WireProtocol](https://jumo.dev/schemas/jumo-v1/WireProtocol)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| ANTHROPIC_MESSAGES | None |  |
| OPENAI_RESPONSES | None |  |
| GOOGLE_GENAI | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [wireProtocol](wireProtocol.md) |  |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: WireProtocol
description: The upstream request/response shape a ProviderPlatform speaks (provider-platform-catalog
  lot). Named after the wire shape, never a vendor account, so an aggregator can share
  a protocol with the platform it fronts.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  ANTHROPIC_MESSAGES:
    text: ANTHROPIC_MESSAGES
  OPENAI_RESPONSES:
    text: OPENAI_RESPONSES
  GOOGLE_GENAI:
    text: GOOGLE_GENAI

```
</details>

</div>