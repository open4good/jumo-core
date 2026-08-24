---
search:
  boost: 10.0
---

# Class: ClarificationPolicy

<div data-search-exclude markdown="1">



URI: [jumo:ClarificationPolicy](https://jumo.dev/schemas/jumo-v1/ClarificationPolicy)





```mermaid
 classDiagram
    class ClarificationPolicy
    click ClarificationPolicy href "../ClarificationPolicy/"
      ClarificationPolicy : enabled

      ClarificationPolicy : maximumTurns

      ClarificationPolicy : onExhaustion





        ClarificationPolicy --> "0..1" OnExhaustionOutcome : onExhaustion
        click OnExhaustionOutcome href "../OnExhaustionOutcome/"



      ClarificationPolicy : onInsufficientInformation


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [enabled](enabled.md) | 1 <br/> [Boolean](Boolean.md) | Source schema pins this to `const: true`; enforced in Rego, not expressible a... | direct |
| [maximumTurns](maximumTurns.md) | 1 <br/> [Integer](Integer.md) |  | direct |
| [onInsufficientInformation](onInsufficientInformation.md) | 1 <br/> [String](String.md) |  | direct |
| [onExhaustion](onExhaustion.md) | 0..1 <br/> [OnExhaustionOutcome](OnExhaustionOutcome.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ChiefOfStaffProfileSpec](ChiefOfStaffProfileSpec.md) | [clarification](clarification.md) | range | [ClarificationPolicy](ClarificationPolicy.md) |












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
| self | jumo:ClarificationPolicy |
| native | jumo:ClarificationPolicy |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ClarificationPolicy
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
  enabled:
    name: enabled
    description: 'Source schema pins this to `const: true`; enforced in Rego, not
      expressible as a LinkML boolean constant.'
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ClarificationPolicy
    domain_of:
    - ClarificationPolicy
    - PracticeSpec
    range: boolean
    required: true
  maximumTurns:
    name: maximumTurns
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ClarificationPolicy
    domain_of:
    - ClarificationPolicy
    range: integer
    required: true
    minimum_value: 1
    maximum_value: 10
  onInsufficientInformation:
    name: onInsufficientInformation
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ClarificationPolicy
    domain_of:
    - ClarificationPolicy
    range: string
    required: true
    equals_string: ASK_FOR_INFORMATION
  onExhaustion:
    name: onExhaustion
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ClarificationPolicy
    domain_of:
    - ClarificationPolicy
    - ResourceBudgetSpec
    - ProviderAccountSpec
    range: OnExhaustionOutcome

```
</details>

### Induced

<details>
```yaml
name: ClarificationPolicy
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
  enabled:
    name: enabled
    description: 'Source schema pins this to `const: true`; enforced in Rego, not
      expressible as a LinkML boolean constant.'
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ClarificationPolicy
    domain_of:
    - ClarificationPolicy
    - PracticeSpec
    range: boolean
    required: true
  maximumTurns:
    name: maximumTurns
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ClarificationPolicy
    domain_of:
    - ClarificationPolicy
    range: integer
    required: true
    minimum_value: 1
    maximum_value: 10
  onInsufficientInformation:
    name: onInsufficientInformation
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ClarificationPolicy
    domain_of:
    - ClarificationPolicy
    range: string
    required: true
    equals_string: ASK_FOR_INFORMATION
  onExhaustion:
    name: onExhaustion
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ClarificationPolicy
    domain_of:
    - ClarificationPolicy
    - ResourceBudgetSpec
    - ProviderAccountSpec
    range: OnExhaustionOutcome

```
</details></div>