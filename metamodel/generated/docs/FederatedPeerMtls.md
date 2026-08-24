---
search:
  boost: 10.0
---

# Class: FederatedPeerMtls

<div data-search-exclude markdown="1">



URI: [jumo:FederatedPeerMtls](https://jumo.dev/schemas/jumo-v1/FederatedPeerMtls)





```mermaid
 classDiagram
    class FederatedPeerMtls
    click FederatedPeerMtls href "../FederatedPeerMtls/"
      FederatedPeerMtls : nextCertificateSha256

      FederatedPeerMtls : peerCertificateSha256


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [peerCertificateSha256](peerCertificateSha256.md) | 1 <br/> [String](String.md) |  | direct |
| [nextCertificateSha256](nextCertificateSha256.md) | 0..1 <br/> [String](String.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [FederatedPeerSpec](FederatedPeerSpec.md) | [mtls](mtls.md) | range | [FederatedPeerMtls](FederatedPeerMtls.md) |












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
| self | jumo:FederatedPeerMtls |
| native | jumo:FederatedPeerMtls |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: FederatedPeerMtls
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
  peerCertificateSha256:
    name: peerCertificateSha256
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: FederatedPeerMtls
    domain_of:
    - FederatedPeerMtls
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$
  nextCertificateSha256:
    name: nextCertificateSha256
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: FederatedPeerMtls
    domain_of:
    - FederatedPeerMtls
    range: string
    pattern: ^sha256:[0-9a-f]{64}$

```
</details>

### Induced

<details>
```yaml
name: FederatedPeerMtls
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
  peerCertificateSha256:
    name: peerCertificateSha256
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: FederatedPeerMtls
    domain_of:
    - FederatedPeerMtls
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$
  nextCertificateSha256:
    name: nextCertificateSha256
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: FederatedPeerMtls
    domain_of:
    - FederatedPeerMtls
    range: string
    pattern: ^sha256:[0-9a-f]{64}$

```
</details></div>