---
search:
  boost: 5.0
---

# Slot: rationale


_One entry per selectedConnectorRefs, explaining the match to the stated intent._



<div data-search-exclude markdown="1">



URI: [jumo:rationale](https://jumo.dev/schemas/jumo-v1/rationale)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConnectorIntentProposal](ConnectorIntentProposal.md) | Structured output of a DIALOGUE_COLLECT step capturing what connectors the as... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ConnectorIntentRationale](ConnectorIntentRationale.md) |
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
| self | jumo:rationale |
| native | jumo:rationale |




## LinkML Source

<details>
```yaml
name: rationale
description: One entry per selectedConnectorRefs, explaining the match to the stated
  intent.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ConnectorIntentProposal
domain_of:
- ConnectorIntentProposal
range: ConnectorIntentRationale
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>