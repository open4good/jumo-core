---
search:
  boost: 5.0
---

# Slot: packageDigest

<div data-search-exclude markdown="1">



URI: [jumo:packageDigest](https://jumo.dev/schemas/jumo-v1/packageDigest)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConnectorPackageSpec](ConnectorPackageSpec.md) | Specification for a ConnectorPackage manifest |  no  |
| [ConnectorPackageCertificationSpec](ConnectorPackageCertificationSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ConnectorPackageSpec](ConnectorPackageSpec.md), [ConnectorPackageCertificationSpec](ConnectorPackageCertificationSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:packageDigest |
| native | jumo:packageDigest |




## LinkML Source

<details>
```yaml
name: packageDigest
domain_of:
- ConnectorPackageSpec
- ConnectorPackageCertificationSpec
range: string

```
</details></div>