---
search:
  boost: 5.0
---

# Slot: testCases

<div data-search-exclude markdown="1">



URI: [jumo:testCases](https://jumo.dev/schemas/jumo-v1/testCases)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConnectorTestPlan](ConnectorTestPlan.md) | Deterministic test plan for verifying connector operations on a target machin... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ConnectorTestCase](ConnectorTestCase.md) |
| Domain Of | [ConnectorTestPlan](ConnectorTestPlan.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ConnectorTestPlan](ConnectorTestPlan.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:testCases |
| native | jumo:testCases |




## LinkML Source

<details>
```yaml
name: testCases
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ConnectorTestPlan
domain_of:
- ConnectorTestPlan
range: ConnectorTestCase
multivalued: true
inlined: true

```
</details></div>