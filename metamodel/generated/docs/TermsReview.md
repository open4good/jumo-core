---
search:
  boost: 10.0
---

# Class: TermsReview

<div data-search-exclude markdown="1">



URI: [jumo:TermsReview](https://jumo.dev/schemas/jumo-v1/TermsReview)





```mermaid
 classDiagram
    class TermsReview
    click TermsReview href "../TermsReview/"
      TermsReview : reviewedAt

      TermsReview : sourceRef

      TermsReview : validUntil


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [sourceRef](sourceRef.md) | 1 <br/> [String](String.md) |  | direct |
| [reviewedAt](reviewedAt.md) | 1 <br/> [Date](Date.md) |  | direct |
| [validUntil](validUntil.md) | 1 <br/> [Date](Date.md) | The review's validity deadline; the window between reviewedAt and validUntil ... | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [EntitlementUseContext](EntitlementUseContext.md) | [termsReview](termsReview.md) | range | [TermsReview](TermsReview.md) |












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
| self | jumo:TermsReview |
| native | jumo:TermsReview |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: TermsReview
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
  sourceRef:
    name: sourceRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: TermsReview
    domain_of:
    - TermsReview
    range: string
    required: true
    pattern: ^.{3,}$
  reviewedAt:
    name: reviewedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: TermsReview
    domain_of:
    - TermsReview
    range: date
    required: true
  validUntil:
    name: validUntil
    description: The review's validity deadline; the window between reviewedAt and
      validUntil may not exceed 90 days (Rego).
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: TermsReview
    domain_of:
    - ExternalAttestation
    - RemoteMcpAppraisalSpec
    - TermsReview
    range: date
    required: true

```
</details>

### Induced

<details>
```yaml
name: TermsReview
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
  sourceRef:
    name: sourceRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: TermsReview
    domain_of:
    - TermsReview
    range: string
    required: true
    pattern: ^.{3,}$
  reviewedAt:
    name: reviewedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: TermsReview
    domain_of:
    - TermsReview
    range: date
    required: true
  validUntil:
    name: validUntil
    description: The review's validity deadline; the window between reviewedAt and
      validUntil may not exceed 90 days (Rego).
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: TermsReview
    domain_of:
    - ExternalAttestation
    - RemoteMcpAppraisalSpec
    - TermsReview
    range: date
    required: true

```
</details></div>