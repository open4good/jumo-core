---
search:
  boost: 5.0
---

# Slot: onInsufficientInformation

<div data-search-exclude markdown="1">



URI: [jumo:onInsufficientInformation](https://jumo.dev/schemas/jumo-v1/onInsufficientInformation)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ClarificationPolicy](ClarificationPolicy.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ClarificationPolicy](ClarificationPolicy.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ClarificationPolicy](ClarificationPolicy.md) |


<details>
<summary>Additional Constraints</summary>
**Must Equal:** `ASK_FOR_INFORMATION`

</details>











## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:onInsufficientInformation |
| native | jumo:onInsufficientInformation |




## LinkML Source

<details>
```yaml
name: onInsufficientInformation
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ClarificationPolicy
domain_of:
- ClarificationPolicy
range: string
required: true
equals_string: ASK_FOR_INFORMATION

```
</details></div>