---
search:
  boost: 10.0
---

# Class: BudgetLimits

<div data-search-exclude markdown="1">



URI: [jumo:BudgetLimits](https://jumo.dev/schemas/jumo-v1/BudgetLimits)





```mermaid
 classDiagram
    class BudgetLimits
    click BudgetLimits href "../BudgetLimits/"
      BudgetLimits : estimatedCostEur

      BudgetLimits : modelCalls

      BudgetLimits : tokens

      BudgetLimits : toolCalls

      BudgetLimits : wallClock


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [tokens](tokens.md) | 0..1 <br/> [Integer](Integer.md) |  | direct |
| [estimatedCostEur](estimatedCostEur.md) | 0..1 <br/> [Float](Float.md) |  | direct |
| [wallClock](wallClock.md) | 0..1 <br/> [Duration](Duration.md) |  | direct |
| [modelCalls](modelCalls.md) | 0..1 <br/> [Integer](Integer.md) |  | direct |
| [toolCalls](toolCalls.md) | 0..1 <br/> [Integer](Integer.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ResourceBudgetSpec](ResourceBudgetSpec.md) | [limits](limits.md) | range | [BudgetLimits](BudgetLimits.md) |












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
| self | jumo:BudgetLimits |
| native | jumo:BudgetLimits |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: BudgetLimits
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
  tokens:
    name: tokens
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: BudgetLimits
    domain_of:
    - ConsumptionReport
    - BudgetLimits
    range: integer
    minimum_value: 1
  estimatedCostEur:
    name: estimatedCostEur
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: BudgetLimits
    domain_of:
    - ConsumptionReport
    - BudgetLimits
    range: float
    minimum_value: 0
  wallClock:
    name: wallClock
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: BudgetLimits
    domain_of:
    - ConsumptionReport
    - BudgetLimits
    - WorkerIsolationLimits
    range: Duration
  modelCalls:
    name: modelCalls
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: BudgetLimits
    domain_of:
    - ConsumptionReport
    - BudgetLimits
    range: integer
    minimum_value: 1
  toolCalls:
    name: toolCalls
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: BudgetLimits
    domain_of:
    - ConsumptionReport
    - BudgetLimits
    range: integer
    minimum_value: 1

```
</details>

### Induced

<details>
```yaml
name: BudgetLimits
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
  tokens:
    name: tokens
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: BudgetLimits
    domain_of:
    - ConsumptionReport
    - BudgetLimits
    range: integer
    minimum_value: 1
  estimatedCostEur:
    name: estimatedCostEur
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: BudgetLimits
    domain_of:
    - ConsumptionReport
    - BudgetLimits
    range: float
    minimum_value: 0
  wallClock:
    name: wallClock
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: BudgetLimits
    domain_of:
    - ConsumptionReport
    - BudgetLimits
    - WorkerIsolationLimits
    range: Duration
  modelCalls:
    name: modelCalls
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: BudgetLimits
    domain_of:
    - ConsumptionReport
    - BudgetLimits
    range: integer
    minimum_value: 1
  toolCalls:
    name: toolCalls
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: BudgetLimits
    domain_of:
    - ConsumptionReport
    - BudgetLimits
    range: integer
    minimum_value: 1

```
</details></div>