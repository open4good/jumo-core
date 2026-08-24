---
search:
  boost: 5.0
---

# Slot: sbomDigest

<div data-search-exclude markdown="1">



URI: [jumo:sbomDigest](https://jumo.dev/schemas/jumo-v1/sbomDigest)
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
| self | jumo:sbomDigest |
| native | jumo:sbomDigest |




## LinkML Source

<details>
```yaml
name: sbomDigest
domain_of:
- CliReleaseSpec
- ConnectorPackageSpec
- ConnectorPackageCertificationSpec
range: string

```
</details></div>