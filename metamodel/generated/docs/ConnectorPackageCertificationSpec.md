---
search:
  boost: 10.0
---

# Class: ConnectorPackageCertificationSpec

<div data-search-exclude markdown="1">



URI: [jumo:ConnectorPackageCertificationSpec](https://jumo.dev/schemas/jumo-v1/ConnectorPackageCertificationSpec)





```mermaid
 classDiagram
    class ConnectorPackageCertificationSpec
    click ConnectorPackageCertificationSpec href "../ConnectorPackageCertificationSpec/"
      ConnectorPackageCertificationSpec : connectorPackageRef





        ConnectorPackageCertificationSpec --> "1" ContractReference : connectorPackageRef
        click ContractReference href "../ContractReference/"



      ConnectorPackageCertificationSpec : imageDigest

      ConnectorPackageCertificationSpec : licenceDigest

      ConnectorPackageCertificationSpec : packageDigest

      ConnectorPackageCertificationSpec : provenanceDigest

      ConnectorPackageCertificationSpec : sbomDigest

      ConnectorPackageCertificationSpec : signatureDigest

      ConnectorPackageCertificationSpec : supportedTransportDigests

      ConnectorPackageCertificationSpec : testDigest


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [connectorPackageRef](connectorPackageRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [packageDigest](packageDigest.md) | 1 <br/> [String](String.md) |  | direct |
| [imageDigest](imageDigest.md) | 1 <br/> [String](String.md) |  | direct |
| [signatureDigest](signatureDigest.md) | 0..1 <br/> [String](String.md) |  | direct |
| [sbomDigest](sbomDigest.md) | 1 <br/> [String](String.md) |  | direct |
| [provenanceDigest](provenanceDigest.md) | 1 <br/> [String](String.md) |  | direct |
| [licenceDigest](licenceDigest.md) | 0..1 <br/> [String](String.md) |  | direct |
| [testDigest](testDigest.md) | 0..1 <br/> [String](String.md) |  | direct |
| [supportedTransportDigests](supportedTransportDigests.md) | 1..* <br/> [String](String.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ConnectorPackageCertification](ConnectorPackageCertification.md) | [spec](spec.md) | range | [ConnectorPackageCertificationSpec](ConnectorPackageCertificationSpec.md) |












## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | GIT |
| jumo.model_role | VALUE_OBJECT |
| jumo.audience | INTERNAL_WORKER |
| jumo.sensitivity | INTERNAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:ConnectorPackageCertificationSpec |
| native | jumo:ConnectorPackageCertificationSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ConnectorPackageCertificationSpec
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: GIT
  jumo.model_role:
    tag: jumo.model_role
    value: VALUE_OBJECT
  jumo.audience:
    tag: jumo.audience
    value: INTERNAL_WORKER
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
  connectorPackageRef:
    name: connectorPackageRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ConnectorPackageCertificationSpec
    domain_of:
    - ConnectorDefinitionSpec
    - McpBundleSpec
    - ConnectorPackageCertificationSpec
    range: ContractReference
    required: true
    inlined: true
  packageDigest:
    name: packageDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ConnectorPackageCertificationSpec
    domain_of:
    - ConnectorPackageSpec
    - ConnectorPackageCertificationSpec
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$
  imageDigest:
    name: imageDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ConnectorPackageCertificationSpec
    domain_of:
    - CliReleaseSpec
    - ConnectorPackageCertificationSpec
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$
  signatureDigest:
    name: signatureDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ConnectorPackageCertificationSpec
    domain_of:
    - CliReleaseSpec
    - ConnectorPackageSpec
    - ConnectorPackageCertificationSpec
    range: string
    pattern: ^sha256:[0-9a-f]{64}$
  sbomDigest:
    name: sbomDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ConnectorPackageCertificationSpec
    domain_of:
    - CliReleaseSpec
    - ConnectorPackageSpec
    - ConnectorPackageCertificationSpec
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$
  provenanceDigest:
    name: provenanceDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ConnectorPackageCertificationSpec
    domain_of:
    - CliReleaseSpec
    - ConnectorPackageSpec
    - ConnectorPackageCertificationSpec
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$
  licenceDigest:
    name: licenceDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ConnectorPackageCertificationSpec
    domain_of:
    - ConnectorPackageSpec
    - ConnectorPackageCertificationSpec
    range: string
    pattern: ^sha256:[0-9a-f]{64}$
  testDigest:
    name: testDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ConnectorPackageCertificationSpec
    domain_of:
    - ConnectorPackageSpec
    - ConnectorPackageCertificationSpec
    range: string
    pattern: ^sha256:[0-9a-f]{64}$
  supportedTransportDigests:
    name: supportedTransportDigests
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorPackageCertificationSpec
    domain_of:
    - ConnectorPackageCertificationSpec
    range: string
    required: true
    multivalued: true
    pattern: ^sha256:[0-9a-f]{64}$
    minimum_cardinality: 1

```
</details>

### Induced

<details>
```yaml
name: ConnectorPackageCertificationSpec
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: GIT
  jumo.model_role:
    tag: jumo.model_role
    value: VALUE_OBJECT
  jumo.audience:
    tag: jumo.audience
    value: INTERNAL_WORKER
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
  connectorPackageRef:
    name: connectorPackageRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ConnectorPackageCertificationSpec
    domain_of:
    - ConnectorDefinitionSpec
    - McpBundleSpec
    - ConnectorPackageCertificationSpec
    range: ContractReference
    required: true
    inlined: true
  packageDigest:
    name: packageDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ConnectorPackageCertificationSpec
    domain_of:
    - ConnectorPackageSpec
    - ConnectorPackageCertificationSpec
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$
  imageDigest:
    name: imageDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ConnectorPackageCertificationSpec
    domain_of:
    - CliReleaseSpec
    - ConnectorPackageCertificationSpec
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$
  signatureDigest:
    name: signatureDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ConnectorPackageCertificationSpec
    domain_of:
    - CliReleaseSpec
    - ConnectorPackageSpec
    - ConnectorPackageCertificationSpec
    range: string
    pattern: ^sha256:[0-9a-f]{64}$
  sbomDigest:
    name: sbomDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ConnectorPackageCertificationSpec
    domain_of:
    - CliReleaseSpec
    - ConnectorPackageSpec
    - ConnectorPackageCertificationSpec
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$
  provenanceDigest:
    name: provenanceDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ConnectorPackageCertificationSpec
    domain_of:
    - CliReleaseSpec
    - ConnectorPackageSpec
    - ConnectorPackageCertificationSpec
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$
  licenceDigest:
    name: licenceDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ConnectorPackageCertificationSpec
    domain_of:
    - ConnectorPackageSpec
    - ConnectorPackageCertificationSpec
    range: string
    pattern: ^sha256:[0-9a-f]{64}$
  testDigest:
    name: testDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ConnectorPackageCertificationSpec
    domain_of:
    - ConnectorPackageSpec
    - ConnectorPackageCertificationSpec
    range: string
    pattern: ^sha256:[0-9a-f]{64}$
  supportedTransportDigests:
    name: supportedTransportDigests
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorPackageCertificationSpec
    domain_of:
    - ConnectorPackageCertificationSpec
    range: string
    required: true
    multivalued: true
    pattern: ^sha256:[0-9a-f]{64}$
    minimum_cardinality: 1

```
</details></div>