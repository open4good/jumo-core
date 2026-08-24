---
search:
  boost: 10.0
---

# Class: ProviderNativeEffort


_Provider-native reasoning-effort parameters, applied verbatim by RequestShape for the rung's protocol -- OpenAI reasoning_effort, Anthropic thinking budget and max_tokens, Google thinkingConfig._



<div data-search-exclude markdown="1">



URI: [jumo:ProviderNativeEffort](https://jumo.dev/schemas/jumo-v1/ProviderNativeEffort)





```mermaid
 classDiagram
    class ProviderNativeEffort
    click ProviderNativeEffort href "../ProviderNativeEffort/"
      ProviderNativeEffort : maxOutputTokens

      ProviderNativeEffort : reasoningEffort

      ProviderNativeEffort : thinkingBudgetTokens


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [reasoningEffort](reasoningEffort.md) | 0..1 <br/> [String](String.md) | Provider-native effort token passed through verbatim (e | direct |
| [maxOutputTokens](maxOutputTokens.md) | 0..1 <br/> [Integer](Integer.md) |  | direct |
| [thinkingBudgetTokens](thinkingBudgetTokens.md) | 0..1 <br/> [Integer](Integer.md) | Native thinking-token budget for a protocol that exposes one (Anthropic exten... | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [EffortRungSpec](EffortRungSpec.md) | [nativeEffort](nativeEffort.md) | range | [ProviderNativeEffort](ProviderNativeEffort.md) |












## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | GIT |
| jumo.model_role | VALUE_OBJECT |
| jumo.audience | REALM_PRIVATE |
| jumo.sensitivity | INTERNAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:ProviderNativeEffort |
| native | jumo:ProviderNativeEffort |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ProviderNativeEffort
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: GIT
  jumo.model_role:
    tag: jumo.model_role
    value: VALUE_OBJECT
  jumo.audience:
    tag: jumo.audience
    value: REALM_PRIVATE
  jumo.sensitivity:
    tag: jumo.sensitivity
    value: INTERNAL
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: true
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
description: Provider-native reasoning-effort parameters, applied verbatim by RequestShape
  for the rung's protocol -- OpenAI reasoning_effort, Anthropic thinking budget and
  max_tokens, Google thinkingConfig.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  reasoningEffort:
    name: reasoningEffort
    description: Provider-native effort token passed through verbatim (e.g. OpenAI's
      'medium' or 'high').
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProviderNativeEffort
    domain_of:
    - WorkerQualityRequirement
    - ProviderNativeEffort
    range: string
  maxOutputTokens:
    name: maxOutputTokens
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProviderNativeEffort
    domain_of:
    - ProviderNativeEffort
    range: integer
    minimum_value: 1
  thinkingBudgetTokens:
    name: thinkingBudgetTokens
    description: Native thinking-token budget for a protocol that exposes one (Anthropic
      extended thinking, Google thinkingConfig).
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProviderNativeEffort
    domain_of:
    - ProviderNativeEffort
    range: integer
    minimum_value: 1

```
</details>

### Induced

<details>
```yaml
name: ProviderNativeEffort
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: GIT
  jumo.model_role:
    tag: jumo.model_role
    value: VALUE_OBJECT
  jumo.audience:
    tag: jumo.audience
    value: REALM_PRIVATE
  jumo.sensitivity:
    tag: jumo.sensitivity
    value: INTERNAL
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: true
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
description: Provider-native reasoning-effort parameters, applied verbatim by RequestShape
  for the rung's protocol -- OpenAI reasoning_effort, Anthropic thinking budget and
  max_tokens, Google thinkingConfig.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  reasoningEffort:
    name: reasoningEffort
    description: Provider-native effort token passed through verbatim (e.g. OpenAI's
      'medium' or 'high').
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProviderNativeEffort
    domain_of:
    - WorkerQualityRequirement
    - ProviderNativeEffort
    range: string
  maxOutputTokens:
    name: maxOutputTokens
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProviderNativeEffort
    domain_of:
    - ProviderNativeEffort
    range: integer
    minimum_value: 1
  thinkingBudgetTokens:
    name: thinkingBudgetTokens
    description: Native thinking-token budget for a protocol that exposes one (Anthropic
      extended thinking, Google thinkingConfig).
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProviderNativeEffort
    domain_of:
    - ProviderNativeEffort
    range: integer
    minimum_value: 1

```
</details></div>