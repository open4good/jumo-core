---
search:
  boost: 10.0
---

# Class: AllowedRequest

<div data-search-exclude markdown="1">



URI: [jumo:AllowedRequest](https://jumo.dev/schemas/jumo-v1/AllowedRequest)





```mermaid
 classDiagram
    class AllowedRequest
    click AllowedRequest href "../AllowedRequest/"
      AllowedRequest : capability

      AllowedRequest : dataScope





        AllowedRequest --> "1" DataScope : dataScope
        click DataScope href "../DataScope/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [capability](capability.md) | 1 <br/> [CapabilityName](CapabilityName.md) |  | direct |
| [dataScope](dataScope.md) | 1 <br/> [DataScope](DataScope.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [SolicitationContractSpec](SolicitationContractSpec.md) | [allowedRequests](allowedRequests.md) | range | [AllowedRequest](AllowedRequest.md) |












## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | NONE |
| jumo.model_role | COMMAND |
| jumo.audience | REALM_PRIVATE |
| jumo.sensitivity | INTERNAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:AllowedRequest |
| native | jumo:AllowedRequest |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: AllowedRequest
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: NONE
  jumo.model_role:
    tag: jumo.model_role
    value: COMMAND
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
  capability:
    name: capability
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AllowedRequest
    domain_of:
    - AllowedRequest
    - JourneyVerificationSpec
    range: CapabilityName
    required: true
  dataScope:
    name: dataScope
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AllowedRequest
    domain_of:
    - AllowedRequest
    - McpBundleSemanticProfile
    range: DataScope
    required: true

```
</details>

### Induced

<details>
```yaml
name: AllowedRequest
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: NONE
  jumo.model_role:
    tag: jumo.model_role
    value: COMMAND
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
  capability:
    name: capability
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AllowedRequest
    domain_of:
    - AllowedRequest
    - JourneyVerificationSpec
    range: CapabilityName
    required: true
  dataScope:
    name: dataScope
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AllowedRequest
    domain_of:
    - AllowedRequest
    - McpBundleSemanticProfile
    range: DataScope
    required: true

```
</details></div>