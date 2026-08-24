---
search:
  boost: 5.0
---

# Slot: contentDigest

<div data-search-exclude markdown="1">



URI: [jumo:contentDigest](https://jumo.dev/schemas/jumo-v1/contentDigest)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ChangeSetFile](ChangeSetFile.md) | One ordered file within a ChangeSetProposal |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ChangeSetFile](ChangeSetFile.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ChangeSetFile](ChangeSetFile.md) |


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
| self | jumo:contentDigest |
| native | jumo:contentDigest |




## LinkML Source

<details>
```yaml
name: contentDigest
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ChangeSetFile
domain_of:
- ChangeSetFile
range: string
required: true
pattern: ^sha256:[0-9a-f]{64}$

```
</details></div>