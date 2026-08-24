---
search:
  boost: 5.0
---

# Slot: maximumAudience


_Widest audience any document under this root may claim. A ceiling, not a default: a directory set to REALM_PRIVATE holds for everything in it regardless of what a single file declares._



<div data-search-exclude markdown="1">



URI: [jumo:maximumAudience](https://jumo.dev/schemas/jumo-v1/maximumAudience)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [DocumentationRoot](DocumentationRoot.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [DataScope](DataScope.md) |
| Domain Of | [DocumentationRoot](DocumentationRoot.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [DocumentationRoot](DocumentationRoot.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:maximumAudience |
| native | jumo:maximumAudience |




## LinkML Source

<details>
```yaml
name: maximumAudience
description: 'Widest audience any document under this root may claim. A ceiling, not
  a default: a directory set to REALM_PRIVATE holds for everything in it regardless
  of what a single file declares.'
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: DocumentationRoot
domain_of:
- DocumentationRoot
range: DataScope
required: true

```
</details></div>