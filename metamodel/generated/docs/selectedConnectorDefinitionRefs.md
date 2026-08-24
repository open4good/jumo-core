---
search:
  boost: 5.0
---

# Slot: selectedConnectorDefinitionRefs


_ConnectorDefinition ids proposed, referencing the supplied catalog only._



<div data-search-exclude markdown="1">



URI: [jumo:selectedConnectorDefinitionRefs](https://jumo.dev/schemas/jumo-v1/selectedConnectorDefinitionRefs)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConnectorIntentProposal](ConnectorIntentProposal.md) | Structured output of a DIALOGUE_COLLECT step capturing what connectors the as... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [ConnectorIntentProposal](ConnectorIntentProposal.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ConnectorIntentProposal](ConnectorIntentProposal.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:selectedConnectorDefinitionRefs |
| native | jumo:selectedConnectorDefinitionRefs |




## LinkML Source

<details>
```yaml
name: selectedConnectorDefinitionRefs
description: ConnectorDefinition ids proposed, referencing the supplied catalog only.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ConnectorIntentProposal
domain_of:
- ConnectorIntentProposal
range: ContractReference
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>