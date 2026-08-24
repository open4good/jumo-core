---
search:
  boost: 5.0
---

# Slot: supportedTransportDigests

<div data-search-exclude markdown="1">



URI: [jumo:supportedTransportDigests](https://jumo.dev/schemas/jumo-v1/supportedTransportDigests)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConnectorPackageCertificationSpec](ConnectorPackageCertificationSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ConnectorPackageCertificationSpec](ConnectorPackageCertificationSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ConnectorPackageCertificationSpec](ConnectorPackageCertificationSpec.md) |


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
| self | jumo:supportedTransportDigests |
| native | jumo:supportedTransportDigests |




## LinkML Source

<details>
```yaml
name: supportedTransportDigests
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ConnectorPackageCertificationSpec
domain_of:
- ConnectorPackageCertificationSpec
range: string
required: true
multivalued: true
pattern: ^sha256:[0-9a-f]{64}$
minimum_cardinality: 1

```
</details></div>