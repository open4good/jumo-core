---
search:
  boost: 10.0
---

# Class: WorkerInteractionRequirement

<div data-search-exclude markdown="1">



URI: [jumo:WorkerInteractionRequirement](https://jumo.dev/schemas/jumo-v1/WorkerInteractionRequirement)





```mermaid
 classDiagram
    class WorkerInteractionRequirement
    click WorkerInteractionRequirement href "../WorkerInteractionRequirement/"
      WorkerInteractionRequirement : structuredOutput





        WorkerInteractionRequirement --> "1" ToolUseRequirement : structuredOutput
        click ToolUseRequirement href "../ToolUseRequirement/"



      WorkerInteractionRequirement : toolUse





        WorkerInteractionRequirement --> "1" ToolUseRequirement : toolUse
        click ToolUseRequirement href "../ToolUseRequirement/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [toolUse](toolUse.md) | 1 <br/> [ToolUseRequirement](ToolUseRequirement.md) |  | direct |
| [structuredOutput](structuredOutput.md) | 1 <br/> [ToolUseRequirement](ToolUseRequirement.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [WorkerRequirementProfileSpec](WorkerRequirementProfileSpec.md) | [interaction](interaction.md) | range | [WorkerInteractionRequirement](WorkerInteractionRequirement.md) |












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
| self | jumo:WorkerInteractionRequirement |
| native | jumo:WorkerInteractionRequirement |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: WorkerInteractionRequirement
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
  toolUse:
    name: toolUse
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerInteractionRequirement
    domain_of:
    - WorkerInteractionRequirement
    range: ToolUseRequirement
    required: true
  structuredOutput:
    name: structuredOutput
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerInteractionRequirement
    domain_of:
    - WorkerInteractionRequirement
    range: ToolUseRequirement
    required: true

```
</details>

### Induced

<details>
```yaml
name: WorkerInteractionRequirement
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
  toolUse:
    name: toolUse
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerInteractionRequirement
    domain_of:
    - WorkerInteractionRequirement
    range: ToolUseRequirement
    required: true
  structuredOutput:
    name: structuredOutput
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerInteractionRequirement
    domain_of:
    - WorkerInteractionRequirement
    range: ToolUseRequirement
    required: true

```
</details></div>