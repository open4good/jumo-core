---
search:
  boost: 10.0
---

# Class: UpstreamToolEntry


_Reason required when disposition is WITHHELD or QUARANTINED (Rego): exposing a tool is justified by the operation that maps it to a capability; holding one back has no such document, so the reason lives here or nowhere._



<div data-search-exclude markdown="1">



URI: [jumo:UpstreamToolEntry](https://jumo.dev/schemas/jumo-v1/UpstreamToolEntry)





```mermaid
 classDiagram
    class UpstreamToolEntry
    click UpstreamToolEntry href "../UpstreamToolEntry/"
      UpstreamToolEntry : disposition





        UpstreamToolEntry --> "1" UpstreamToolDisposition : disposition
        click UpstreamToolDisposition href "../UpstreamToolDisposition/"



      UpstreamToolEntry : reason

      UpstreamToolEntry : upstreamToolName


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [upstreamToolName](upstreamToolName.md) | 1 <br/> [String](String.md) |  | direct |
| [disposition](disposition.md) | 1 <br/> [UpstreamToolDisposition](UpstreamToolDisposition.md) |  | direct |
| [reason](reason.md) | 0..1 <br/> [String](String.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ConnectorAppraisalSpec](ConnectorAppraisalSpec.md) | [upstreamInventory](upstreamInventory.md) | range | [UpstreamToolEntry](UpstreamToolEntry.md) |












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
| self | jumo:UpstreamToolEntry |
| native | jumo:UpstreamToolEntry |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: UpstreamToolEntry
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
description: 'Reason required when disposition is WITHHELD or QUARANTINED (Rego):
  exposing a tool is justified by the operation that maps it to a capability; holding
  one back has no such document, so the reason lives here or nowhere.'
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  upstreamToolName:
    name: upstreamToolName
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: UpstreamToolEntry
    domain_of:
    - UpstreamToolEntry
    - McpBundleOperation
    range: string
    required: true
    pattern: ^.{1,}$
  disposition:
    name: disposition
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: UpstreamToolEntry
    domain_of:
    - UpstreamToolEntry
    range: UpstreamToolDisposition
    required: true
  reason:
    name: reason
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: UpstreamToolEntry
    domain_of:
    - OrganizationRetentionHoldSpec
    - ConnectorIntentRationale
    - UpstreamToolEntry
    range: string
    pattern: ^.{10,}$

```
</details>

### Induced

<details>
```yaml
name: UpstreamToolEntry
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
description: 'Reason required when disposition is WITHHELD or QUARANTINED (Rego):
  exposing a tool is justified by the operation that maps it to a capability; holding
  one back has no such document, so the reason lives here or nowhere.'
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  upstreamToolName:
    name: upstreamToolName
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: UpstreamToolEntry
    domain_of:
    - UpstreamToolEntry
    - McpBundleOperation
    range: string
    required: true
    pattern: ^.{1,}$
  disposition:
    name: disposition
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: UpstreamToolEntry
    domain_of:
    - UpstreamToolEntry
    range: UpstreamToolDisposition
    required: true
  reason:
    name: reason
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: UpstreamToolEntry
    domain_of:
    - OrganizationRetentionHoldSpec
    - ConnectorIntentRationale
    - UpstreamToolEntry
    range: string
    pattern: ^.{10,}$

```
</details></div>