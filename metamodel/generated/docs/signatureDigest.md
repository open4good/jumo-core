---
search:
  boost: 5.0
---

# Slot: signatureDigest

<div data-search-exclude markdown="1">



URI: [jumo:signatureDigest](https://jumo.dev/schemas/jumo-v1/signatureDigest)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [CliReleaseSpec](CliReleaseSpec.md) | Specification for a CliRelease contract |  no  |
| [ConnectorPackageSpec](ConnectorPackageSpec.md) | Specification for a ConnectorPackage manifest |  no  |
| [ConnectorPackageCertificationSpec](ConnectorPackageCertificationSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [CliReleaseSpec](CliReleaseSpec.md), [ConnectorPackageSpec](ConnectorPackageSpec.md), [ConnectorPackageCertificationSpec](ConnectorPackageCertificationSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:signatureDigest |
| native | jumo:signatureDigest |




## LinkML Source

<details>
```yaml
name: signatureDigest
domain_of:
- CliReleaseSpec
- ConnectorPackageSpec
- ConnectorPackageCertificationSpec
range: string

```
</details></div>