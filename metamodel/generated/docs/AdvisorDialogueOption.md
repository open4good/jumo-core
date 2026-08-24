---
search:
  boost: 10.0
---

# Class: AdvisorDialogueOption


_One named effort option for a role. CapabilityProfile expresses intent; EngagementMethod carries the prompt, worker, budget, assurance and stages._



<div data-search-exclude markdown="1">



URI: [jumo:AdvisorDialogueOption](https://jumo.dev/schemas/jumo-v1/AdvisorDialogueOption)





```mermaid
 classDiagram
    class AdvisorDialogueOption
    click AdvisorDialogueOption href "../AdvisorDialogueOption/"
      AdvisorDialogueOption : capabilityProfileRef





        AdvisorDialogueOption --> "1" ContractReference : capabilityProfileRef
        click ContractReference href "../ContractReference/"



      AdvisorDialogueOption : defaultOption

      AdvisorDialogueOption : engagementMethodRef





        AdvisorDialogueOption --> "1" ContractReference : engagementMethodRef
        click ContractReference href "../ContractReference/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [capabilityProfileRef](capabilityProfileRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [engagementMethodRef](engagementMethodRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [defaultOption](defaultOption.md) | 1 <br/> [Boolean](Boolean.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [AdvisorProfileSpec](AdvisorProfileSpec.md) | [dialogueOptions](dialogueOptions.md) | range | [AdvisorDialogueOption](AdvisorDialogueOption.md) |












## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | GIT |
| jumo.model_role | VALUE_OBJECT |
| jumo.audience | REALM_PRIVATE |
| jumo.sensitivity | PERSONAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:AdvisorDialogueOption |
| native | jumo:AdvisorDialogueOption |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: AdvisorDialogueOption
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
    value: PERSONAL
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: true
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
description: One named effort option for a role. CapabilityProfile expresses intent;
  EngagementMethod carries the prompt, worker, budget, assurance and stages.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  capabilityProfileRef:
    name: capabilityProfileRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AdvisorDialogueOption
    domain_of:
    - AdvisorDialogueOption
    range: ContractReference
    required: true
    inlined: true
  engagementMethodRef:
    name: engagementMethodRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AdvisorDialogueOption
    domain_of:
    - AdvisorDialogueOption
    range: ContractReference
    required: true
    inlined: true
  defaultOption:
    name: defaultOption
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AdvisorDialogueOption
    domain_of:
    - AdvisorDialogueOption
    range: boolean
    required: true

```
</details>

### Induced

<details>
```yaml
name: AdvisorDialogueOption
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
    value: PERSONAL
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: true
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
description: One named effort option for a role. CapabilityProfile expresses intent;
  EngagementMethod carries the prompt, worker, budget, assurance and stages.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  capabilityProfileRef:
    name: capabilityProfileRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AdvisorDialogueOption
    domain_of:
    - AdvisorDialogueOption
    range: ContractReference
    required: true
    inlined: true
  engagementMethodRef:
    name: engagementMethodRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AdvisorDialogueOption
    domain_of:
    - AdvisorDialogueOption
    range: ContractReference
    required: true
    inlined: true
  defaultOption:
    name: defaultOption
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AdvisorDialogueOption
    domain_of:
    - AdvisorDialogueOption
    range: boolean
    required: true

```
</details></div>