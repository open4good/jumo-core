---
search:
  boost: 2.0
---


# Enum: ProcessStepKind




_The BPMN-shaped element kinds the ProcessSpec compiler maps to Temporal and, separately, projects to BPMN 2.0 XML via an element-mapping table._



<div data-search-exclude markdown="1">

URI: [jumo:ProcessStepKind](https://jumo.dev/schemas/jumo-v1/ProcessStepKind)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| START | None |  |
| END | None |  |
| SERVICE | None |  |
| USER | None |  |
| TIMER | None |  |
| MESSAGE | None |  |
| GATEWAY | None |  |
| SUBPROCESS | None |  |













## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: ProcessStepKind
description: The BPMN-shaped element kinds the ProcessSpec compiler maps to Temporal
  and, separately, projects to BPMN 2.0 XML via an element-mapping table.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  START:
    text: START
  END:
    text: END
  SERVICE:
    text: SERVICE
  USER:
    text: USER
  TIMER:
    text: TIMER
  MESSAGE:
    text: MESSAGE
  GATEWAY:
    text: GATEWAY
  SUBPROCESS:
    text: SUBPROCESS

```
</details>

</div>