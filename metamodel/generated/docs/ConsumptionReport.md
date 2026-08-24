---
search:
  boost: 10.0
---

# Class: ConsumptionReport


_What the work spent, in units ResourceBudget declares. Keys held identical to ResourceBudget.spec.limits by scripts/validate-integration-contracts.py today; Rego takes over that cross-check._



<div data-search-exclude markdown="1">



URI: [jumo:ConsumptionReport](https://jumo.dev/schemas/jumo-v1/ConsumptionReport)





```mermaid
 classDiagram
    class ConsumptionReport
    click ConsumptionReport href "../ConsumptionReport/"
      ConsumptionReport : estimatedCostEur

      ConsumptionReport : modelCalls

      ConsumptionReport : tokens

      ConsumptionReport : toolCalls

      ConsumptionReport : wallClock


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
| [WorkOrderSpec](WorkOrderSpec.md) | [consumption](consumption.md) | range | [ConsumptionReport](ConsumptionReport.md) |












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
| self | jumo:ConsumptionReport |
| native | jumo:ConsumptionReport |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ConsumptionReport
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
description: What the work spent, in units ResourceBudget declares. Keys held identical
  to ResourceBudget.spec.limits by scripts/validate-integration-contracts.py today;
  Rego takes over that cross-check.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  tokens:
    name: tokens
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConsumptionReport
    domain_of:
    - ConsumptionReport
    - BudgetLimits
    range: integer
    minimum_value: 0
  estimatedCostEur:
    name: estimatedCostEur
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConsumptionReport
    domain_of:
    - ConsumptionReport
    - BudgetLimits
    range: float
    minimum_value: 0
  wallClock:
    name: wallClock
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConsumptionReport
    domain_of:
    - ConsumptionReport
    - BudgetLimits
    - WorkerIsolationLimits
    range: Duration
  modelCalls:
    name: modelCalls
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConsumptionReport
    domain_of:
    - ConsumptionReport
    - BudgetLimits
    range: integer
    minimum_value: 0
  toolCalls:
    name: toolCalls
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConsumptionReport
    domain_of:
    - ConsumptionReport
    - BudgetLimits
    range: integer
    minimum_value: 0

```
</details>

### Induced

<details>
```yaml
name: ConsumptionReport
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
description: What the work spent, in units ResourceBudget declares. Keys held identical
  to ResourceBudget.spec.limits by scripts/validate-integration-contracts.py today;
  Rego takes over that cross-check.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  tokens:
    name: tokens
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConsumptionReport
    domain_of:
    - ConsumptionReport
    - BudgetLimits
    range: integer
    minimum_value: 0
  estimatedCostEur:
    name: estimatedCostEur
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConsumptionReport
    domain_of:
    - ConsumptionReport
    - BudgetLimits
    range: float
    minimum_value: 0
  wallClock:
    name: wallClock
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConsumptionReport
    domain_of:
    - ConsumptionReport
    - BudgetLimits
    - WorkerIsolationLimits
    range: Duration
  modelCalls:
    name: modelCalls
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConsumptionReport
    domain_of:
    - ConsumptionReport
    - BudgetLimits
    range: integer
    minimum_value: 0
  toolCalls:
    name: toolCalls
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConsumptionReport
    domain_of:
    - ConsumptionReport
    - BudgetLimits
    range: integer
    minimum_value: 0

```
</details></div>