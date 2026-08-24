---
search:
  boost: 10.0
---

# Class: ExecutionCellIdentity

<div data-search-exclude markdown="1">



URI: [jumo:ExecutionCellIdentity](https://jumo.dev/schemas/jumo-v1/ExecutionCellIdentity)





```mermaid
 classDiagram
    class ExecutionCellIdentity
    click ExecutionCellIdentity href "../ExecutionCellIdentity/"
      ExecutionCellIdentity : deviceId

      ExecutionCellIdentity : pairingMethod





        ExecutionCellIdentity --> "1" ExecutionCellPairingMethod : pairingMethod
        click ExecutionCellPairingMethod href "../ExecutionCellPairingMethod/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [deviceId](deviceId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [pairingMethod](pairingMethod.md) | 1 <br/> [ExecutionCellPairingMethod](ExecutionCellPairingMethod.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ExecutionCellSpec](ExecutionCellSpec.md) | [identity](identity.md) | range | [ExecutionCellIdentity](ExecutionCellIdentity.md) |












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
| self | jumo:ExecutionCellIdentity |
| native | jumo:ExecutionCellIdentity |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ExecutionCellIdentity
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
  deviceId:
    name: deviceId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionCellIdentity
    domain_of:
    - ExecutionCellIdentity
    range: Identifier
    required: true
  pairingMethod:
    name: pairingMethod
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionCellIdentity
    domain_of:
    - ExecutionCellIdentity
    range: ExecutionCellPairingMethod
    required: true

```
</details>

### Induced

<details>
```yaml
name: ExecutionCellIdentity
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
  deviceId:
    name: deviceId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionCellIdentity
    domain_of:
    - ExecutionCellIdentity
    range: Identifier
    required: true
  pairingMethod:
    name: pairingMethod
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionCellIdentity
    domain_of:
    - ExecutionCellIdentity
    range: ExecutionCellPairingMethod
    required: true

```
</details></div>