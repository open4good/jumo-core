---
search:
  boost: 10.0
---

# Class: ProjectPersonalSpaceBinding

<div data-search-exclude markdown="1">



URI: [jumo:ProjectPersonalSpaceBinding](https://jumo.dev/schemas/jumo-v1/ProjectPersonalSpaceBinding)





```mermaid
 classDiagram
    class ProjectPersonalSpaceBinding
    click ProjectPersonalSpaceBinding href "../ProjectPersonalSpaceBinding/"
      ProjectPersonalSpaceBinding : personalSpaceRef





        ProjectPersonalSpaceBinding --> "1" ContractReference : personalSpaceRef
        click ContractReference href "../ContractReference/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [personalSpaceRef](personalSpaceRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ProjectSpec](ProjectSpec.md) | [personalSpaces](personalSpaces.md) | range | [ProjectPersonalSpaceBinding](ProjectPersonalSpaceBinding.md) |












## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | NONE |
| jumo.model_role | VALUE_OBJECT |
| jumo.audience | REALM_PRIVATE |
| jumo.sensitivity | PERSONAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:ProjectPersonalSpaceBinding |
| native | jumo:ProjectPersonalSpaceBinding |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ProjectPersonalSpaceBinding
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
    value: PERSONAL
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: true
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  personalSpaceRef:
    name: personalSpaceRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProjectPersonalSpaceBinding
    domain_of:
    - PrincipalSpec
    - ProjectPersonalSpaceBinding
    range: ContractReference
    required: true
    inlined: true

```
</details>

### Induced

<details>
```yaml
name: ProjectPersonalSpaceBinding
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
    value: PERSONAL
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: true
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  personalSpaceRef:
    name: personalSpaceRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProjectPersonalSpaceBinding
    domain_of:
    - PrincipalSpec
    - ProjectPersonalSpaceBinding
    range: ContractReference
    required: true
    inlined: true

```
</details></div>