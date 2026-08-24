---
search:
  boost: 2.0
---


# Enum: ProcessTerminalState



<div data-search-exclude markdown="1">

URI: [jumo:ProcessTerminalState](https://jumo.dev/schemas/jumo-v1/ProcessTerminalState)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| COMPLETED | None |  |
| DECLINED | None |  |
| CANCELLED | None |  |
| FAILED_FINAL | None |  |
| SUPERSEDED | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [terminalState](terminalState.md) | Required on END and forbidden elsewhere |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: ProcessTerminalState
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  COMPLETED:
    text: COMPLETED
  DECLINED:
    text: DECLINED
  CANCELLED:
    text: CANCELLED
  FAILED_FINAL:
    text: FAILED_FINAL
  SUPERSEDED:
    text: SUPERSEDED

```
</details>

</div>