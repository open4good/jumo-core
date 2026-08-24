---
search:
  boost: 10.0
---

# Class: OfferingExport

<div data-search-exclude markdown="1">



URI: [jumo:OfferingExport](https://jumo.dev/schemas/jumo-v1/OfferingExport)





```mermaid
 classDiagram
    class OfferingExport
    click OfferingExport href "../OfferingExport/"
      OfferingExport : backupRetentionDays

      OfferingExport : exitWindowDays

      OfferingExport : free


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [free](free.md) | 1 <br/> [Boolean](Boolean.md) |  | direct |
| [exitWindowDays](exitWindowDays.md) | 1 <br/> [Integer](Integer.md) |  | direct |
| [backupRetentionDays](backupRetentionDays.md) | 1 <br/> [Integer](Integer.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [OfferingSpecBody](OfferingSpecBody.md) | [export](export.md) | range | [OfferingExport](OfferingExport.md) |












## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | GIT |
| jumo.model_role | VALUE_OBJECT |
| jumo.audience | REALM_PRIVATE |
| jumo.sensitivity | PUBLIC |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:OfferingExport |
| native | jumo:OfferingExport |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: OfferingExport
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
    value: PUBLIC
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: true
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  free:
    name: free
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: 'true'
    owner: OfferingExport
    domain_of:
    - OfferingExport
    range: boolean
    required: true
  exitWindowDays:
    name: exitWindowDays
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '30'
    owner: OfferingExport
    domain_of:
    - OfferingExport
    range: integer
    required: true
  backupRetentionDays:
    name: backupRetentionDays
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '90'
    owner: OfferingExport
    domain_of:
    - OfferingExport
    range: integer
    required: true

```
</details>

### Induced

<details>
```yaml
name: OfferingExport
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
    value: PUBLIC
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: true
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  free:
    name: free
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: 'true'
    owner: OfferingExport
    domain_of:
    - OfferingExport
    range: boolean
    required: true
  exitWindowDays:
    name: exitWindowDays
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '30'
    owner: OfferingExport
    domain_of:
    - OfferingExport
    range: integer
    required: true
  backupRetentionDays:
    name: backupRetentionDays
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '90'
    owner: OfferingExport
    domain_of:
    - OfferingExport
    range: integer
    required: true

```
</details></div>