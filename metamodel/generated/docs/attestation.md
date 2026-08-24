---
search:
  boost: 5.0
---

# Slot: attestation


_Required when status is EXTERNALLY_ATTESTED (Rego)._



<div data-search-exclude markdown="1">



URI: [jumo:attestation](https://jumo.dev/schemas/jumo-v1/attestation)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ControlAssessment](ControlAssessment.md) | Recognized result of assessing a Control against a ComplianceProfile, with ob... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ExternalAttestation](ExternalAttestation.md) |
| Domain Of | [ControlAssessment](ControlAssessment.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ControlAssessment](ControlAssessment.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:attestation |
| native | jumo:attestation |




## LinkML Source

<details>
```yaml
name: attestation
description: Required when status is EXTERNALLY_ATTESTED (Rego).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ControlAssessment
domain_of:
- ControlAssessment
range: ExternalAttestation
inlined: true

```
</details></div>