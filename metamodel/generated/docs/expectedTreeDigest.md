---
search:
  boost: 5.0
---

# Slot: expectedTreeDigest

<div data-search-exclude markdown="1">



URI: [jumo:expectedTreeDigest](https://jumo.dev/schemas/jumo-v1/expectedTreeDigest)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ChangeSetProposal](ChangeSetProposal.md) | Ordered multi-file changeset proposed against one repository, the unit ForgeA... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ChangeSetProposal](ChangeSetProposal.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ChangeSetProposal](ChangeSetProposal.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^sha256:[0-9a-f]{64}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:expectedTreeDigest |
| native | jumo:expectedTreeDigest |




## LinkML Source

<details>
```yaml
name: expectedTreeDigest
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ChangeSetProposal
domain_of:
- ChangeSetProposal
range: string
required: true
pattern: ^sha256:[0-9a-f]{64}$

```
</details></div>