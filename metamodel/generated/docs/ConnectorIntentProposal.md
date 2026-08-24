---
search:
  boost: 10.0
---

# Class: ConnectorIntentProposal


_Structured output of a DIALOGUE_COLLECT step capturing what connectors the assistant proposes in response to the user's stated intent (AssistedJourneyStep.promptRef, PromptOutput form: STRUCTURED). A proposal, never a grant or a configuration: selectedConnectorRefs must be drawn only from the realm's declared ConnectorDefinition catalog supplied as the prompt's RAG context (the same corpus ContractLoader loads for CapabilityGatewayService), never invented by the model. The user still confirms selection explicitly; this class only bounds what the model may say back._



<div data-search-exclude markdown="1">



URI: [jumo:ConnectorIntentProposal](https://jumo.dev/schemas/jumo-v1/ConnectorIntentProposal)





```mermaid
 classDiagram
    class ConnectorIntentProposal
    click ConnectorIntentProposal href "../ConnectorIntentProposal/"
      ConnectorIntentProposal : openQuestion

      ConnectorIntentProposal : rationale





        ConnectorIntentProposal --> "*" ConnectorIntentRationale : rationale
        click ConnectorIntentRationale href "../ConnectorIntentRationale/"



      ConnectorIntentProposal : selectedConnectorDefinitionRefs





        ConnectorIntentProposal --> "*" ContractReference : selectedConnectorDefinitionRefs
        click ContractReference href "../ContractReference/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [selectedConnectorDefinitionRefs](selectedConnectorDefinitionRefs.md) | * <br/> [ContractReference](ContractReference.md) | ConnectorDefinition ids proposed, referencing the supplied catalog only | direct |
| [rationale](rationale.md) | * <br/> [ConnectorIntentRationale](ConnectorIntentRationale.md) | One entry per selectedConnectorRefs, explaining the match to the stated inten... | direct |
| [openQuestion](openQuestion.md) | 0..1 <br/> [String](String.md) | A clarifying question to continue the dialogue when intent is still ambiguous | direct |















## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | GIT |
| jumo.model_role | VALUE_OBJECT |
| jumo.audience | REALM_PRIVATE |
| jumo.sensitivity | INTERNAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:ConnectorIntentProposal |
| native | jumo:ConnectorIntentProposal |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ConnectorIntentProposal
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: GIT
  jumo.model_role:
    tag: jumo.model_role
    value: VALUE_OBJECT
  jumo.audience:
    tag: jumo.audience
    value: REALM_PRIVATE
  jumo.sensitivity:
    tag: jumo.sensitivity
    value: INTERNAL
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: true
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
description: 'Structured output of a DIALOGUE_COLLECT step capturing what connectors
  the assistant proposes in response to the user''s stated intent (AssistedJourneyStep.promptRef,
  PromptOutput form: STRUCTURED). A proposal, never a grant or a configuration: selectedConnectorRefs
  must be drawn only from the realm''s declared ConnectorDefinition catalog supplied
  as the prompt''s RAG context (the same corpus ContractLoader loads for CapabilityGatewayService),
  never invented by the model. The user still confirms selection explicitly; this
  class only bounds what the model may say back.'
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  selectedConnectorDefinitionRefs:
    name: selectedConnectorDefinitionRefs
    description: ConnectorDefinition ids proposed, referencing the supplied catalog
      only.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorIntentProposal
    domain_of:
    - ConnectorIntentProposal
    range: ContractReference
    multivalued: true
    inlined: true
    inlined_as_list: true
  rationale:
    name: rationale
    description: One entry per selectedConnectorRefs, explaining the match to the
      stated intent.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorIntentProposal
    domain_of:
    - ConnectorIntentProposal
    range: ConnectorIntentRationale
    multivalued: true
    inlined: true
    inlined_as_list: true
  openQuestion:
    name: openQuestion
    description: A clarifying question to continue the dialogue when intent is still
      ambiguous. Absent once the proposal is considered final for this turn.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorIntentProposal
    domain_of:
    - ConnectorIntentProposal
    range: string

```
</details>

### Induced

<details>
```yaml
name: ConnectorIntentProposal
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: GIT
  jumo.model_role:
    tag: jumo.model_role
    value: VALUE_OBJECT
  jumo.audience:
    tag: jumo.audience
    value: REALM_PRIVATE
  jumo.sensitivity:
    tag: jumo.sensitivity
    value: INTERNAL
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: true
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
description: 'Structured output of a DIALOGUE_COLLECT step capturing what connectors
  the assistant proposes in response to the user''s stated intent (AssistedJourneyStep.promptRef,
  PromptOutput form: STRUCTURED). A proposal, never a grant or a configuration: selectedConnectorRefs
  must be drawn only from the realm''s declared ConnectorDefinition catalog supplied
  as the prompt''s RAG context (the same corpus ContractLoader loads for CapabilityGatewayService),
  never invented by the model. The user still confirms selection explicitly; this
  class only bounds what the model may say back.'
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  selectedConnectorDefinitionRefs:
    name: selectedConnectorDefinitionRefs
    description: ConnectorDefinition ids proposed, referencing the supplied catalog
      only.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorIntentProposal
    domain_of:
    - ConnectorIntentProposal
    range: ContractReference
    multivalued: true
    inlined: true
    inlined_as_list: true
  rationale:
    name: rationale
    description: One entry per selectedConnectorRefs, explaining the match to the
      stated intent.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorIntentProposal
    domain_of:
    - ConnectorIntentProposal
    range: ConnectorIntentRationale
    multivalued: true
    inlined: true
    inlined_as_list: true
  openQuestion:
    name: openQuestion
    description: A clarifying question to continue the dialogue when intent is still
      ambiguous. Absent once the proposal is considered final for this turn.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorIntentProposal
    domain_of:
    - ConnectorIntentProposal
    range: string

```
</details></div>