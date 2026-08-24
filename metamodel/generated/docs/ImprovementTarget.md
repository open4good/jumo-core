---
search:
  boost: 10.0
---

# Class: ImprovementTarget

<div data-search-exclude markdown="1">



URI: [jumo:ImprovementTarget](https://jumo.dev/schemas/jumo-v1/ImprovementTarget)





```mermaid
 classDiagram
    class ImprovementTarget
    click ImprovementTarget href "../ImprovementTarget/"
      ImprovementTarget : autonomy





        ImprovementTarget --> "1" AutonomyLevel : autonomy
        click AutonomyLevel href "../AutonomyLevel/"



      ImprovementTarget : capabilityRef

      ImprovementTarget : mergeCapabilityRef

      ImprovementTarget : pathGlob

      ImprovementTarget : requiredObligations





        ImprovementTarget --> "1..*" Obligation : requiredObligations
        click Obligation href "../Obligation/"



      ImprovementTarget : ring





        ImprovementTarget --> "1" Ring : ring
        click Ring href "../Ring/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [pathGlob](pathGlob.md) | 1 <br/> [String](String.md) | Path-traversal exclusion (`not: pattern  | direct |
| [ring](ring.md) | 1 <br/> [Ring](Ring.md) | RING_0_ROOT_OF_TRUST exclusion moves to Rego | direct |
| [capabilityRef](capabilityRef.md) | 1 <br/> [CapabilityName](CapabilityName.md) |  | direct |
| [autonomy](autonomy.md) | 1 <br/> [AutonomyLevel](AutonomyLevel.md) |  | direct |
| [mergeCapabilityRef](mergeCapabilityRef.md) | 0..1 <br/> [CapabilityName](CapabilityName.md) | Required when autonomy is BOUNDED_AUTONOMOUS (Rego) | direct |
| [requiredObligations](requiredObligations.md) | 1..* <br/> [Obligation](Obligation.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ImprovementLoopSpec](ImprovementLoopSpec.md) | [targets](targets.md) | range | [ImprovementTarget](ImprovementTarget.md) |












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
| self | jumo:ImprovementTarget |
| native | jumo:ImprovementTarget |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ImprovementTarget
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
  pathGlob:
    name: pathGlob
    description: 'Path-traversal exclusion (`not: pattern ..\/`) moves to Rego.'
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImprovementTarget
    domain_of:
    - ImprovementTarget
    - SurfaceWritePath
    range: string
    required: true
    pattern: ^[A-Za-z0-9._*-]+(/[A-Za-z0-9._*-]+)*$
  ring:
    name: ring
    description: RING_0_ROOT_OF_TRUST exclusion moves to Rego.
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ImprovementTarget
    domain_of:
    - WorkOrderSpec
    - PromptTemplateSpec
    - ImprovementTarget
    - ProcessStep
    - SurfaceWritePath
    range: Ring
    required: true
  capabilityRef:
    name: capabilityRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImprovementTarget
    domain_of:
    - ImprovementTarget
    - AttentionDecisionOption
    - ProcessStep
    - ConnectorOperation
    - McpBundleOperation
    - SurfaceWritePath
    range: CapabilityName
    required: true
  autonomy:
    name: autonomy
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ImprovementTarget
    domain_of:
    - PracticeSpec
    - ImprovementTarget
    range: AutonomyLevel
    required: true
  mergeCapabilityRef:
    name: mergeCapabilityRef
    description: Required when autonomy is BOUNDED_AUTONOMOUS (Rego).
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImprovementTarget
    domain_of:
    - ImprovementTarget
    range: CapabilityName
  requiredObligations:
    name: requiredObligations
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ImprovementTarget
    domain_of:
    - ActionCapability
    - ImprovementTarget
    - SurfaceWritePath
    range: Obligation
    required: true
    multivalued: true
    minimum_cardinality: 1

```
</details>

### Induced

<details>
```yaml
name: ImprovementTarget
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
  pathGlob:
    name: pathGlob
    description: 'Path-traversal exclusion (`not: pattern ..\/`) moves to Rego.'
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImprovementTarget
    domain_of:
    - ImprovementTarget
    - SurfaceWritePath
    range: string
    required: true
    pattern: ^[A-Za-z0-9._*-]+(/[A-Za-z0-9._*-]+)*$
  ring:
    name: ring
    description: RING_0_ROOT_OF_TRUST exclusion moves to Rego.
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ImprovementTarget
    domain_of:
    - WorkOrderSpec
    - PromptTemplateSpec
    - ImprovementTarget
    - ProcessStep
    - SurfaceWritePath
    range: Ring
    required: true
  capabilityRef:
    name: capabilityRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImprovementTarget
    domain_of:
    - ImprovementTarget
    - AttentionDecisionOption
    - ProcessStep
    - ConnectorOperation
    - McpBundleOperation
    - SurfaceWritePath
    range: CapabilityName
    required: true
  autonomy:
    name: autonomy
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ImprovementTarget
    domain_of:
    - PracticeSpec
    - ImprovementTarget
    range: AutonomyLevel
    required: true
  mergeCapabilityRef:
    name: mergeCapabilityRef
    description: Required when autonomy is BOUNDED_AUTONOMOUS (Rego).
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImprovementTarget
    domain_of:
    - ImprovementTarget
    range: CapabilityName
  requiredObligations:
    name: requiredObligations
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ImprovementTarget
    domain_of:
    - ActionCapability
    - ImprovementTarget
    - SurfaceWritePath
    range: Obligation
    required: true
    multivalued: true
    minimum_cardinality: 1

```
</details></div>