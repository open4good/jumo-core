---
search:
  boost: 10.0
---

# Class: EffortRungSpec

<div data-search-exclude markdown="1">



URI: [jumo:EffortRungSpec](https://jumo.dev/schemas/jumo-v1/EffortRungSpec)





```mermaid
 classDiagram
    class EffortRungSpec
    click EffortRungSpec href "../EffortRungSpec/"
      EffortRungSpec : modelAlias

      EffortRungSpec : nativeEffort





        EffortRungSpec --> "0..1" ProviderNativeEffort : nativeEffort
        click ProviderNativeEffort href "../ProviderNativeEffort/"



      EffortRungSpec : rung





        EffortRungSpec --> "1" ReasoningEffort : rung
        click ReasoningEffort href "../ReasoningEffort/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [rung](rung.md) | 1 <br/> [ReasoningEffort](ReasoningEffort.md) | Matches a WorkerRequirementProfile | direct |
| [modelAlias](modelAlias.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [nativeEffort](nativeEffort.md) | 0..1 <br/> [ProviderNativeEffort](ProviderNativeEffort.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ProviderRouting](ProviderRouting.md) | [effortLadder](effortLadder.md) | range | [EffortRungSpec](EffortRungSpec.md) |
| [ProviderPlatformSpec](ProviderPlatformSpec.md) | [defaultEffortLadder](defaultEffortLadder.md) | range | [EffortRungSpec](EffortRungSpec.md) |












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
| self | jumo:EffortRungSpec |
| native | jumo:EffortRungSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: EffortRungSpec
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
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  rung:
    name: rung
    description: Matches a WorkerRequirementProfile.spec.quality.reasoningEffort value
      one for one; the resolver picks the account's rung with the same name instead
      of a per-profile alias.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EffortRungSpec
    domain_of:
    - EffortRungSpec
    range: ReasoningEffort
    required: true
  modelAlias:
    name: modelAlias
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EffortRungSpec
    domain_of:
    - EffortRungSpec
    range: Identifier
    required: true
  nativeEffort:
    name: nativeEffort
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EffortRungSpec
    domain_of:
    - EffortRungSpec
    range: ProviderNativeEffort
    inlined: true

```
</details>

### Induced

<details>
```yaml
name: EffortRungSpec
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
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  rung:
    name: rung
    description: Matches a WorkerRequirementProfile.spec.quality.reasoningEffort value
      one for one; the resolver picks the account's rung with the same name instead
      of a per-profile alias.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EffortRungSpec
    domain_of:
    - EffortRungSpec
    range: ReasoningEffort
    required: true
  modelAlias:
    name: modelAlias
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EffortRungSpec
    domain_of:
    - EffortRungSpec
    range: Identifier
    required: true
  nativeEffort:
    name: nativeEffort
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EffortRungSpec
    domain_of:
    - EffortRungSpec
    range: ProviderNativeEffort
    inlined: true

```
</details></div>