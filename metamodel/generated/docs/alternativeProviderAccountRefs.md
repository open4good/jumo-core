---
search:
  boost: 5.0
---

# Slot: alternativeProviderAccountRefs

<div data-search-exclude markdown="1">



URI: [jumo:alternativeProviderAccountRefs](https://jumo.dev/schemas/jumo-v1/alternativeProviderAccountRefs)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProviderAccountSpec](ProviderAccountSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [ProviderAccountSpec](ProviderAccountSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProviderAccountSpec](ProviderAccountSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:alternativeProviderAccountRefs |
| native | jumo:alternativeProviderAccountRefs |




## LinkML Source

<details>
```yaml
name: alternativeProviderAccountRefs
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProviderAccountSpec
domain_of:
- ProviderAccountSpec
range: ContractReference
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>