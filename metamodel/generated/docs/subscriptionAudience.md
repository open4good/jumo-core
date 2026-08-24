---
search:
  boost: 5.0
---

# Slot: subscriptionAudience

<div data-search-exclude markdown="1">



URI: [jumo:subscriptionAudience](https://jumo.dev/schemas/jumo-v1/subscriptionAudience)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OfferingSpecBody](OfferingSpecBody.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [OfferingSpecBody](OfferingSpecBody.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [OfferingSpecBody](OfferingSpecBody.md) |


<details>
<summary>Additional Constraints</summary>
**Must Equal:** `INDEPENDENT_PROFESSIONAL`

</details>











## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:subscriptionAudience |
| native | jumo:subscriptionAudience |




## LinkML Source

<details>
```yaml
name: subscriptionAudience
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: OfferingSpecBody
domain_of:
- OfferingSpecBody
range: string
required: true
equals_string: INDEPENDENT_PROFESSIONAL

```
</details></div>