---
search:
  boost: 10.0
---

# Class: EntitlementUseContext

<div data-search-exclude markdown="1">



URI: [jumo:EntitlementUseContext](https://jumo.dev/schemas/jumo-v1/EntitlementUseContext)





```mermaid
 classDiagram
    class EntitlementUseContext
    click EntitlementUseContext href "../EntitlementUseContext/"
      EntitlementUseContext : termsReview





        EntitlementUseContext --> "1" TermsReview : termsReview
        click TermsReview href "../TermsReview/"



      EntitlementUseContext : verdict





        EntitlementUseContext --> "1" EntitlementVerdict : verdict
        click EntitlementVerdict href "../EntitlementVerdict/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [verdict](verdict.md) | 1 <br/> [EntitlementVerdict](EntitlementVerdict.md) |  | direct |
| [termsReview](termsReview.md) | 1 <br/> [TermsReview](TermsReview.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [EntitlementUsePermissions](EntitlementUsePermissions.md) | [holderOperated](holderOperated.md) | range | [EntitlementUseContext](EntitlementUseContext.md) |
| [EntitlementUsePermissions](EntitlementUsePermissions.md) | [jumoManaged](jumoManaged.md) | range | [EntitlementUseContext](EntitlementUseContext.md) |












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
| self | jumo:EntitlementUseContext |
| native | jumo:EntitlementUseContext |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: EntitlementUseContext
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
  verdict:
    name: verdict
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: EntitlementUseContext
    domain_of:
    - ConnectorAppraisalSpec
    - RemoteMcpAppraisalSpec
    - EntitlementUseContext
    range: EntitlementVerdict
    required: true
  termsReview:
    name: termsReview
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EntitlementUseContext
    domain_of:
    - EntitlementUseContext
    range: TermsReview
    required: true
    inlined: true

```
</details>

### Induced

<details>
```yaml
name: EntitlementUseContext
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
  verdict:
    name: verdict
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: EntitlementUseContext
    domain_of:
    - ConnectorAppraisalSpec
    - RemoteMcpAppraisalSpec
    - EntitlementUseContext
    range: EntitlementVerdict
    required: true
  termsReview:
    name: termsReview
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EntitlementUseContext
    domain_of:
    - EntitlementUseContext
    range: TermsReview
    required: true
    inlined: true

```
</details></div>