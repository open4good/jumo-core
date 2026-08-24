---
search:
  boost: 2.0
---


# Enum: WorkerCli




_The CLI a worker substrate runs. Shared vocabulary -- a WorkerSubstrate declares which one it runs (integration) and a CliToolDefinition declares which one it implements (execution), so neither module has to import the other and no naming convention links a tool to a value._



<div data-search-exclude markdown="1">

URI: [jumo:WorkerCli](https://jumo.dev/schemas/jumo-v1/WorkerCli)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| CLAUDE_CODE | None |  |
| CODEX | None |  |
| GEMINI_CLI | None |  |
| COPILOT_CLI | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [cli](cli.md) | The WorkerCli value this tool implements |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: WorkerCli
description: The CLI a worker substrate runs. Shared vocabulary -- a WorkerSubstrate
  declares which one it runs (integration) and a CliToolDefinition declares which
  one it implements (execution), so neither module has to import the other and no
  naming convention links a tool to a value.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  CLAUDE_CODE:
    text: CLAUDE_CODE
  CODEX:
    text: CODEX
  GEMINI_CLI:
    text: GEMINI_CLI
  COPILOT_CLI:
    text: COPILOT_CLI

```
</details>

</div>