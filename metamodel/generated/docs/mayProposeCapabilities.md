---
search:
  boost: 5.0
---

# Slot: mayProposeCapabilities


_Enforced as a subset of the owning AgentDefinition's requestedCapabilities (Rego). Proposing is still not granting: policy decides._



<div data-search-exclude markdown="1">



URI: [jumo:mayProposeCapabilities](https://jumo.dev/schemas/jumo-v1/mayProposeCapabilities)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [PromptTemplateSpec](PromptTemplateSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [CapabilityName](CapabilityName.md) |
| Domain Of | [PromptTemplateSpec](PromptTemplateSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [PromptTemplateSpec](PromptTemplateSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:mayProposeCapabilities |
| native | jumo:mayProposeCapabilities |




## LinkML Source

<details>
```yaml
name: mayProposeCapabilities
description: 'Enforced as a subset of the owning AgentDefinition''s requestedCapabilities
  (Rego). Proposing is still not granting: policy decides.'
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: PromptTemplateSpec
domain_of:
- PromptTemplateSpec
range: CapabilityName
multivalued: true

```
</details></div>