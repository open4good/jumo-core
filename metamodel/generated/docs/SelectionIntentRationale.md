---
search:
  boost: 10.0
---

# Class: SelectionIntentRationale

<div data-search-exclude markdown="1">



URI: [jumo:SelectionIntentRationale](https://jumo.dev/schemas/jumo-v1/SelectionIntentRationale)





```mermaid
 classDiagram
    class SelectionIntentRationale
    click SelectionIntentRationale href "../SelectionIntentRationale/"
      SelectionIntentRationale : reason

      SelectionIntentRationale : ref





        SelectionIntentRationale --> "1" ContractReference : ref
        click ContractReference href "../ContractReference/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [ref](ref.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [reason](reason.md) | 1 <br/> [String](String.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [SelectionIntentProposal](SelectionIntentProposal.md) | [rationale](rationale.md) | range | [SelectionIntentRationale](SelectionIntentRationale.md) |












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
| self | jumo:SelectionIntentRationale |
| native | jumo:SelectionIntentRationale |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: SelectionIntentRationale
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
  ref:
    name: ref
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SelectionIntentRationale
    domain_of:
    - SelectionIntentRationale
    range: ContractReference
    required: true
    inlined: true
  reason:
    name: reason
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: SelectionIntentRationale
    domain_of:
    - OrganizationRetentionHoldSpec
    - SelectionIntentRationale
    - UpstreamToolEntry
    range: string
    required: true
    pattern: ^.{1,}$

```
</details>

### Induced

<details>
```yaml
name: SelectionIntentRationale
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
  ref:
    name: ref
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SelectionIntentRationale
    domain_of:
    - SelectionIntentRationale
    range: ContractReference
    required: true
    inlined: true
  reason:
    name: reason
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: SelectionIntentRationale
    domain_of:
    - OrganizationRetentionHoldSpec
    - SelectionIntentRationale
    - UpstreamToolEntry
    range: string
    required: true
    pattern: ^.{1,}$

```
</details></div>