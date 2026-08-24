---
search:
  boost: 5.0
---

# Slot: contractDirectory

<div data-search-exclude markdown="1">



URI: [jumo:contractDirectory](https://jumo.dev/schemas/jumo-v1/contractDirectory)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProjectSpec](ProjectSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ProjectSpec](ProjectSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProjectSpec](ProjectSpec.md) |


<details>
<summary>Additional Constraints</summary>
**Must Equal:** `.jumo`

</details>











## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:contractDirectory |
| native | jumo:contractDirectory |




## LinkML Source

<details>
```yaml
name: contractDirectory
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProjectSpec
domain_of:
- ProjectSpec
range: string
required: true
equals_string: .jumo

```
</details></div>