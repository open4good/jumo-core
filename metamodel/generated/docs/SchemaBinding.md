---
search:
  boost: 10.0
---

# Class: SchemaBinding


_Deterministic link between a payload, its LinkML class, and exact schema digest._



<div data-search-exclude markdown="1">



URI: [jumo:SchemaBinding](https://jumo.dev/schemas/jumo-v1/SchemaBinding)





```mermaid
 classDiagram
    class SchemaBinding
    click SchemaBinding href "../SchemaBinding/"
      SchemaBinding : modelClass

      SchemaBinding : profile





        SchemaBinding --> "1" SchemaProfile : profile
        click SchemaProfile href "../SchemaProfile/"



      SchemaBinding : schemaDigest

      SchemaBinding : schemaId

      SchemaBinding : schemaVersion


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [modelClass](modelClass.md) | 1 <br/> [String](String.md) |  | direct |
| [schemaVersion](schemaVersion.md) | 1 <br/> [String](String.md) |  | direct |
| [schemaId](schemaId.md) | 1 <br/> [String](String.md) |  | direct |
| [schemaDigest](schemaDigest.md) | 1 <br/> [String](String.md) |  | direct |
| [profile](profile.md) | 1 <br/> [SchemaProfile](SchemaProfile.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [CliInvocationRequest](CliInvocationRequest.md) | [inputBinding](inputBinding.md) | range | [SchemaBinding](SchemaBinding.md) |
| [CliInvocationRequest](CliInvocationRequest.md) | [outputBinding](outputBinding.md) | range | [SchemaBinding](SchemaBinding.md) |
| [SchemaBoundPayload](SchemaBoundPayload.md) | [schemaBinding](schemaBinding.md) | range | [SchemaBinding](SchemaBinding.md) |
| [ApiResponseBinding](ApiResponseBinding.md) | [schemaBinding](schemaBinding.md) | range | [SchemaBinding](SchemaBinding.md) |
| [ApiOperation](ApiOperation.md) | [requestBinding](requestBinding.md) | range | [SchemaBinding](SchemaBinding.md) |












## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | NONE |
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
| self | jumo:SchemaBinding |
| native | jumo:SchemaBinding |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: SchemaBinding
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: NONE
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
description: Deterministic link between a payload, its LinkML class, and exact schema
  digest.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  modelClass:
    name: modelClass
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SchemaBinding
    domain_of:
    - SchemaBinding
    range: string
    required: true
  schemaVersion:
    name: schemaVersion
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SchemaBinding
    domain_of:
    - SchemaBinding
    range: string
    required: true
  schemaId:
    name: schemaId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SchemaBinding
    domain_of:
    - SchemaBinding
    range: string
    required: true
  schemaDigest:
    name: schemaDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SchemaBinding
    domain_of:
    - SchemaBinding
    range: string
    required: true
  profile:
    name: profile
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SchemaBinding
    domain_of:
    - SchemaBinding
    range: SchemaProfile
    required: true

```
</details>

### Induced

<details>
```yaml
name: SchemaBinding
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: NONE
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
description: Deterministic link between a payload, its LinkML class, and exact schema
  digest.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  modelClass:
    name: modelClass
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SchemaBinding
    domain_of:
    - SchemaBinding
    range: string
    required: true
  schemaVersion:
    name: schemaVersion
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SchemaBinding
    domain_of:
    - SchemaBinding
    range: string
    required: true
  schemaId:
    name: schemaId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SchemaBinding
    domain_of:
    - SchemaBinding
    range: string
    required: true
  schemaDigest:
    name: schemaDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SchemaBinding
    domain_of:
    - SchemaBinding
    range: string
    required: true
  profile:
    name: profile
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SchemaBinding
    domain_of:
    - SchemaBinding
    range: SchemaProfile
    required: true

```
</details></div>