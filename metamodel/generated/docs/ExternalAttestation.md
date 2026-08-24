---
search:
  boost: 10.0
---

# Class: ExternalAttestation

<div data-search-exclude markdown="1">



URI: [jumo:ExternalAttestation](https://jumo.dev/schemas/jumo-v1/ExternalAttestation)





```mermaid
 classDiagram
    class ExternalAttestation
    click ExternalAttestation href "../ExternalAttestation/"
      ExternalAttestation : attestationRef

      ExternalAttestation : evaluatorIdentity

      ExternalAttestation : validFrom

      ExternalAttestation : validUntil


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [evaluatorIdentity](evaluatorIdentity.md) | 1 <br/> [String](String.md) |  | direct |
| [validFrom](validFrom.md) | 1 <br/> [Date](Date.md) |  | direct |
| [validUntil](validUntil.md) | 1 <br/> [Date](Date.md) |  | direct |
| [attestationRef](attestationRef.md) | 0..1 <br/> [String](String.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ControlAssessment](ControlAssessment.md) | [attestation](attestation.md) | range | [ExternalAttestation](ExternalAttestation.md) |












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
| self | jumo:ExternalAttestation |
| native | jumo:ExternalAttestation |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ExternalAttestation
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
  evaluatorIdentity:
    name: evaluatorIdentity
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExternalAttestation
    domain_of:
    - ExternalAttestation
    range: string
    required: true
  validFrom:
    name: validFrom
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExternalAttestation
    domain_of:
    - ExternalAttestation
    range: date
    required: true
  validUntil:
    name: validUntil
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExternalAttestation
    domain_of:
    - ExternalAttestation
    - RemoteMcpAppraisalSpec
    - TermsReview
    range: date
    required: true
  attestationRef:
    name: attestationRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExternalAttestation
    domain_of:
    - ExternalAttestation
    range: string

```
</details>

### Induced

<details>
```yaml
name: ExternalAttestation
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
  evaluatorIdentity:
    name: evaluatorIdentity
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExternalAttestation
    domain_of:
    - ExternalAttestation
    range: string
    required: true
  validFrom:
    name: validFrom
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExternalAttestation
    domain_of:
    - ExternalAttestation
    range: date
    required: true
  validUntil:
    name: validUntil
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExternalAttestation
    domain_of:
    - ExternalAttestation
    - RemoteMcpAppraisalSpec
    - TermsReview
    range: date
    required: true
  attestationRef:
    name: attestationRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExternalAttestation
    domain_of:
    - ExternalAttestation
    range: string

```
</details></div>