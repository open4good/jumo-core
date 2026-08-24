---
search:
  boost: 5.0
---

# Slot: files

<div data-search-exclude markdown="1">



URI: [jumo:files](https://jumo.dev/schemas/jumo-v1/files)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ChangeSetProposal](ChangeSetProposal.md) | Ordered multi-file changeset proposed against one repository, the unit ForgeA... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ChangeSetFile](ChangeSetFile.md) |
| Domain Of | [ChangeSetProposal](ChangeSetProposal.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
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
| self | jumo:files |
| native | jumo:files |




## LinkML Source

<details>
```yaml
name: files
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ChangeSetProposal
domain_of:
- ChangeSetProposal
range: ChangeSetFile
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 1

```
</details></div>