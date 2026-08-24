---
search:
  boost: 5.0
---

# Slot: ownerApproved

<div data-search-exclude markdown="1">



URI: [jumo:ownerApproved](https://jumo.dev/schemas/jumo-v1/ownerApproved)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ChangeSetProposal](ChangeSetProposal.md) | Ordered multi-file changeset proposed against one repository, the unit ForgeA... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Boolean](Boolean.md) |
| Domain Of | [ChangeSetProposal](ChangeSetProposal.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ChangeSetProposal](ChangeSetProposal.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:ownerApproved |
| native | jumo:ownerApproved |




## LinkML Source

<details>
```yaml
name: ownerApproved
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ChangeSetProposal
domain_of:
- ChangeSetProposal
range: boolean
required: true

```
</details></div>