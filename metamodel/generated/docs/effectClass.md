---
search:
  boost: 5.0
---

# Slot: effectClass

<div data-search-exclude markdown="1">



URI: [jumo:effectClass](https://jumo.dev/schemas/jumo-v1/effectClass)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConnectorTestCase](ConnectorTestCase.md) | A single test case in a connector verification plan |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ConnectorTestCase](ConnectorTestCase.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ConnectorTestCase](ConnectorTestCase.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:effectClass |
| native | jumo:effectClass |




## LinkML Source

<details>
```yaml
name: effectClass
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ConnectorTestCase
domain_of:
- ConnectorTestCase
range: string
required: true

```
</details></div>