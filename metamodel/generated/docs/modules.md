---
search:
  boost: 5.0
---

# Slot: modules

<div data-search-exclude markdown="1">



URI: [jumo:modules](https://jumo.dev/schemas/jumo-v1/modules)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [JumoKitSpec](JumoKitSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [KitModule](KitModule.md) |
| Domain Of | [JumoKitSpec](JumoKitSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [JumoKitSpec](JumoKitSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:modules |
| native | jumo:modules |




## LinkML Source

<details>
```yaml
name: modules
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: JumoKitSpec
domain_of:
- JumoKitSpec
range: KitModule
required: true
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>