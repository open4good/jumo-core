---
search:
  boost: 5.0
---

# Slot: policySetRefs


_Relative paths to PolicySet documents. Resolved and existence-checked (Rego)._



<div data-search-exclude markdown="1">



URI: [jumo:policySetRefs](https://jumo.dev/schemas/jumo-v1/policySetRefs)
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
| self | jumo:policySetRefs |
| native | jumo:policySetRefs |




## LinkML Source

<details>
```yaml
name: policySetRefs
description: Relative paths to PolicySet documents. Resolved and existence-checked
  (Rego).
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