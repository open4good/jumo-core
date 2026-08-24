---
search:
  boost: 5.0
---

# Slot: members

<div data-search-exclude markdown="1">



URI: [jumo:members](https://jumo.dev/schemas/jumo-v1/members)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [TeamSpecBody](TeamSpecBody.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [TeamMember](TeamMember.md) |
| Domain Of | [TeamSpecBody](TeamSpecBody.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 2 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [TeamSpecBody](TeamSpecBody.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:members |
| native | jumo:members |




## LinkML Source

<details>
```yaml
name: members
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: TeamSpecBody
domain_of:
- TeamSpecBody
range: TeamMember
required: true
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 2

```
</details></div>