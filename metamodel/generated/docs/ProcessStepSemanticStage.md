---
search:
  boost: 2.0
---


# Enum: ProcessStepSemanticStage




_Verbatim from WorkflowDeclaration.spec.stages (source schema). Ordering invariants previously enforced by scripts/validate-contracts.py ("policy evaluation and capability acquisition must precede effect application"; "OUTCOME_ASSESSMENT follows OUTCOME_MEASUREMENT and never stands alone"; "neither assessment nor synthesis may share a workflow with EFFECT_APPLICATION") move to Rego using graph.reachable_paths over this ProcessSpec's steps/flows._



<div data-search-exclude markdown="1">

URI: [jumo:ProcessStepSemanticStage](https://jumo.dev/schemas/jumo-v1/ProcessStepSemanticStage)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| CAPTURE_LINKED | None |  |
| NORMALIZE_CAPTURE | None |  |
| INTENT_RECOGNITION | None |  |
| SUFFICIENCY_ASSESSMENT | None |  |
| SCOPE_RESOLUTION | None |  |
| DECOMPOSITION | None |  |
| WORK_DISPOSITION | None |  |
| ACKNOWLEDGEMENT | None |  |
| ADMISSION | None |  |
| CLARIFICATION | None |  |
| POLICY_EVALUATION | None |  |
| CAPABILITY_ACQUISITION | None |  |
| PLANNING | None |  |
| EXECUTION | None |  |
| EFFECT_APPLICATION | None |  |
| OBSERVATION | None |  |
| VERIFICATION | None |  |
| STATUS_WINDOW_RESOLUTION | None |  |
| STATUS_FACT_EXTRACTION | None |  |
| STATUS_NARRATION | None |  |
| STATUS_DELIVERY | None |  |
| STATUS_CURSOR_ADVANCE | None |  |
| OUTCOME_MEASUREMENT | None |  |
| OUTCOME_ASSESSMENT | None |  |
| IMPROVEMENT_SYNTHESIS | None |  |
| COMPLETION | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [semanticStage](semanticStage.md) | The WorkflowDeclaration-era stage this step corresponds to, where applicable |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: ProcessStepSemanticStage
description: Verbatim from WorkflowDeclaration.spec.stages (source schema). Ordering
  invariants previously enforced by scripts/validate-contracts.py ("policy evaluation
  and capability acquisition must precede effect application"; "OUTCOME_ASSESSMENT
  follows OUTCOME_MEASUREMENT and never stands alone"; "neither assessment nor synthesis
  may share a workflow with EFFECT_APPLICATION") move to Rego using graph.reachable_paths
  over this ProcessSpec's steps/flows.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  CAPTURE_LINKED:
    text: CAPTURE_LINKED
  NORMALIZE_CAPTURE:
    text: NORMALIZE_CAPTURE
  INTENT_RECOGNITION:
    text: INTENT_RECOGNITION
  SUFFICIENCY_ASSESSMENT:
    text: SUFFICIENCY_ASSESSMENT
  SCOPE_RESOLUTION:
    text: SCOPE_RESOLUTION
  DECOMPOSITION:
    text: DECOMPOSITION
  WORK_DISPOSITION:
    text: WORK_DISPOSITION
  ACKNOWLEDGEMENT:
    text: ACKNOWLEDGEMENT
  ADMISSION:
    text: ADMISSION
  CLARIFICATION:
    text: CLARIFICATION
  POLICY_EVALUATION:
    text: POLICY_EVALUATION
  CAPABILITY_ACQUISITION:
    text: CAPABILITY_ACQUISITION
  PLANNING:
    text: PLANNING
  EXECUTION:
    text: EXECUTION
  EFFECT_APPLICATION:
    text: EFFECT_APPLICATION
  OBSERVATION:
    text: OBSERVATION
  VERIFICATION:
    text: VERIFICATION
  STATUS_WINDOW_RESOLUTION:
    text: STATUS_WINDOW_RESOLUTION
  STATUS_FACT_EXTRACTION:
    text: STATUS_FACT_EXTRACTION
  STATUS_NARRATION:
    text: STATUS_NARRATION
  STATUS_DELIVERY:
    text: STATUS_DELIVERY
  STATUS_CURSOR_ADVANCE:
    text: STATUS_CURSOR_ADVANCE
  OUTCOME_MEASUREMENT:
    text: OUTCOME_MEASUREMENT
  OUTCOME_ASSESSMENT:
    text: OUTCOME_ASSESSMENT
  IMPROVEMENT_SYNTHESIS:
    text: IMPROVEMENT_SYNTHESIS
  COMPLETION:
    text: COMPLETION

```
</details>

</div>