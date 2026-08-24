---
search:
  boost: 5.0
---

# Slot: inputPayload

<div data-search-exclude markdown="1">



URI: [jumo:inputPayload](https://jumo.dev/schemas/jumo-v1/inputPayload)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConnectorTestCase](ConnectorTestCase.md) | A single test case in a connector verification plan |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [SchemaBoundPayload](SchemaBoundPayload.md) |
| Domain Of | [ConnectorTestCase](ConnectorTestCase.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
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
| self | jumo:inputPayload |
| native | jumo:inputPayload |




## LinkML Source

<details>
```yaml
name: inputPayload
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ConnectorTestCase
domain_of:
- ConnectorTestCase
range: SchemaBoundPayload
inlined: true

```
</details></div>