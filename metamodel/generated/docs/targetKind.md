---
search:
  boost: 5.0
---

# Slot: targetKind

<div data-search-exclude markdown="1">



URI: [jumo:targetKind](https://jumo.dev/schemas/jumo-v1/targetKind)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [PromptOutput](PromptOutput.md) |  |  no  |
| [AssistedJourneyEmission](AssistedJourneyEmission.md) | The declarative replacement for a per-journey emission branch |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [PromptOutput](PromptOutput.md), [AssistedJourneyEmission](AssistedJourneyEmission.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:targetKind |
| native | jumo:targetKind |




## LinkML Source

<details>
```yaml
name: targetKind
domain_of:
- PromptOutput
- AssistedJourneyEmission
range: string

```
</details></div>