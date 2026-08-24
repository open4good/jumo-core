---
search:
  boost: 10.0
---

# Class: ActionCapabilitySetSpec

<div data-search-exclude markdown="1">



URI: [jumo:ActionCapabilitySetSpec](https://jumo.dev/schemas/jumo-v1/ActionCapabilitySetSpec)





```mermaid
 classDiagram
    class ActionCapabilitySetSpec
    click ActionCapabilitySetSpec href "../ActionCapabilitySetSpec/"
      ActionCapabilitySetSpec : capabilities





        ActionCapabilitySetSpec --> "1..*" ActionCapability : capabilities
        click ActionCapability href "../ActionCapability/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [capabilities](capabilities.md) | 1..* <br/> [ActionCapability](ActionCapability.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ActionCapabilitySet](ActionCapabilitySet.md) | [spec](spec.md) | range | [ActionCapabilitySetSpec](ActionCapabilitySetSpec.md) |












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
| self | jumo:ActionCapabilitySetSpec |
| native | jumo:ActionCapabilitySetSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ActionCapabilitySetSpec
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
  capabilities:
    name: capabilities
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ActionCapabilitySetSpec
    domain_of:
    - ActionCapabilitySetSpec
    - McpProtocolProfile
    - McpInventorySnapshot
    range: ActionCapability
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1

```
</details>

### Induced

<details>
```yaml
name: ActionCapabilitySetSpec
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
  capabilities:
    name: capabilities
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ActionCapabilitySetSpec
    domain_of:
    - ActionCapabilitySetSpec
    - McpProtocolProfile
    - McpInventorySnapshot
    range: ActionCapability
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1

```
</details></div>