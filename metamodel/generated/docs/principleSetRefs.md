---
search:
  boost: 5.0
---

# Slot: principleSetRefs


_Relative paths to PrincipleSet documents. Influence only._



<div data-search-exclude markdown="1">



URI: [jumo:principleSetRefs](https://jumo.dev/schemas/jumo-v1/principleSetRefs)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RealmTemplateSpec](RealmTemplateSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [RealmTemplateSpec](RealmTemplateSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [RealmTemplateSpec](RealmTemplateSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:principleSetRefs |
| native | jumo:principleSetRefs |




## LinkML Source

<details>
```yaml
name: principleSetRefs
description: Relative paths to PrincipleSet documents. Influence only.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: RealmTemplateSpec
domain_of:
- RealmTemplateSpec
range: ContractReference
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>