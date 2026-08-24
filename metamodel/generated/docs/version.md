---
search:
  boost: 5.0
---

# Slot: version

<div data-search-exclude markdown="1">



URI: [jumo:version](https://jumo.dev/schemas/jumo-v1/version)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [CliReleaseSpec](CliReleaseSpec.md) | Specification for a CliRelease contract |  no  |
| [McpCatalogVersion](McpCatalogVersion.md) |  |  no  |
| [FederationProfileSpec](FederationProfileSpec.md) |  |  no  |
| [ConnectorPackageSpec](ConnectorPackageSpec.md) | Specification for a ConnectorPackage manifest |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [CliReleaseSpec](CliReleaseSpec.md), [McpCatalogVersion](McpCatalogVersion.md), [FederationProfileSpec](FederationProfileSpec.md), [ConnectorPackageSpec](ConnectorPackageSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:version |
| native | jumo:version |




## LinkML Source

<details>
```yaml
name: version
domain_of:
- CliReleaseSpec
- McpCatalogVersion
- FederationProfileSpec
- ConnectorPackageSpec
range: string

```
</details></div>