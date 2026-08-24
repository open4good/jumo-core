---
search:
  boost: 5.0
---

# Slot: editor

<div data-search-exclude markdown="1">



URI: [jumo:editor](https://jumo.dev/schemas/jumo-v1/editor)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [SurfaceWritePath](SurfaceWritePath.md) | Path traversal, editor-to-path compatibility, and required-obligation preserv... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [WritePathEditor](WritePathEditor.md) |
| Domain Of | [SurfaceWritePath](SurfaceWritePath.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [SurfaceWritePath](SurfaceWritePath.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:editor |
| native | jumo:editor |




## LinkML Source

<details>
```yaml
name: editor
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: SurfaceWritePath
domain_of:
- SurfaceWritePath
range: WritePathEditor
required: true

```
</details></div>