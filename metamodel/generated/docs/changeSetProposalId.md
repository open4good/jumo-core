---
search:
  boost: 5.0
---

# Slot: changeSetProposalId

<div data-search-exclude markdown="1">



URI: [jumo:changeSetProposalId](https://jumo.dev/schemas/jumo-v1/changeSetProposalId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ChangeSetProposal](ChangeSetProposal.md) | Ordered multi-file changeset proposed against one repository, the unit ForgeA... |  no  |
| [ChangeSetProjection](ChangeSetProjection.md) | Observed record of the single atomic PR ForgeApplier opened for a ChangeSetPr... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ChangeSetProposal](ChangeSetProposal.md), [ChangeSetProjection](ChangeSetProjection.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:changeSetProposalId |
| native | jumo:changeSetProposalId |




## LinkML Source

<details>
```yaml
name: changeSetProposalId
domain_of:
- ChangeSetProposal
- ChangeSetProjection
range: string

```
</details></div>