---
search:
  boost: 5.0
---

# Slot: digest

<div data-search-exclude markdown="1">



URI: [jumo:digest](https://jumo.dev/schemas/jumo-v1/digest)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RenderedKitFile](RenderedKitFile.md) |  |  no  |
| [RenderedKitAsset](RenderedKitAsset.md) | Provenance for one rendered binary asset or i18n bundle -- same digest-proven... |  no  |
| [ModuleDigestEntry](ModuleDigestEntry.md) |  |  no  |
| [McpBundleArtifact](McpBundleArtifact.md) |  |  no  |
| [WorkerImage](WorkerImage.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [RenderedKitFile](RenderedKitFile.md), [RenderedKitAsset](RenderedKitAsset.md), [ModuleDigestEntry](ModuleDigestEntry.md), [McpBundleArtifact](McpBundleArtifact.md), [WorkerImage](WorkerImage.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:digest |
| native | jumo:digest |




## LinkML Source

<details>
```yaml
name: digest
domain_of:
- RenderedKitFile
- RenderedKitAsset
- ModuleDigestEntry
- McpBundleArtifact
- WorkerImage
range: string

```
</details></div>