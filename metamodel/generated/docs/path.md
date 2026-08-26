---
search:
  boost: 5.0
---

# Slot: path

<div data-search-exclude markdown="1">



URI: [jumo:path](https://jumo.dev/schemas/jumo-v1/path)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [DocumentationRoot](DocumentationRoot.md) |  |  no  |
| [PromptBody](PromptBody.md) |  |  no  |
| [ApiOperation](ApiOperation.md) | Typed operation declaration in an API surface contract |  no  |
| [ChangeSetFile](ChangeSetFile.md) | One ordered file within a ChangeSetProposal |  no  |
| [ProjectionOptionCondition](ProjectionOptionCondition.md) | One condition a candidate instance must satisfy to be offered as a field's op... |  no  |
| [NestedOptionsSource](NestedOptionsSource.md) | Resolves a field's options from a nested multivalued attribute of one specifi... |  no  |
| [ProjectionField](ProjectionField.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [DocumentationRoot](DocumentationRoot.md), [PromptBody](PromptBody.md), [ApiOperation](ApiOperation.md), [ChangeSetFile](ChangeSetFile.md), [ProjectionOptionCondition](ProjectionOptionCondition.md), [NestedOptionsSource](NestedOptionsSource.md), [ProjectionField](ProjectionField.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:path |
| native | jumo:path |




## LinkML Source

<details>
```yaml
name: path
domain_of:
- DocumentationRoot
- PromptBody
- ApiOperation
- ChangeSetFile
- ProjectionOptionCondition
- NestedOptionsSource
- ProjectionField
range: string

```
</details></div>