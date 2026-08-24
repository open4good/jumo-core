---
search:
  boost: 2.0
---


# Enum: DataScope




_Widest audience a document or capability's data may be served to. Kept as one enum for audience/publication checks: see InformationClassification and the classification/compartment/release-transformation split below for the narrower declassification-transformation concept. DataScope itself is not retired, since dozens of existing schemas key off it for a single publication-boundary check, and splitting it everywhere at once would be overreach for that one check._



<div data-search-exclude markdown="1">

URI: [jumo:DataScope](https://jumo.dev/schemas/jumo-v1/DataScope)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| PUBLISHED_SUMMARY | None |  |
| TYPED_ATTENTION_ONLY | None |  |
| PROJECT_SCOPED | None |  |
| REALM_PRIVATE | None |  |
| ORGANIZATION_ONLY | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [audience](audience.md) | Widest scope a retrieval may serve this document to |
| [maximumAudience](maximumAudience.md) | Widest audience any document under this root may claim |
| [classificationCeiling](classificationCeiling.md) |  |
| [dataScope](dataScope.md) |  |
| [dataScopeCeiling](dataScopeCeiling.md) |  |
| [classification](classification.md) | Same enumeration as capability data access, retrieval and rendering (canonica... |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: DataScope
description: 'Widest audience a document or capability''s data may be served to. Kept
  as one enum for audience/publication checks: see InformationClassification and the
  classification/compartment/release-transformation split below for the narrower declassification-transformation
  concept. DataScope itself is not retired, since dozens of existing schemas key off
  it for a single publication-boundary check, and splitting it everywhere at once
  would be overreach for that one check.'
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  PUBLISHED_SUMMARY:
    text: PUBLISHED_SUMMARY
  TYPED_ATTENTION_ONLY:
    text: TYPED_ATTENTION_ONLY
  PROJECT_SCOPED:
    text: PROJECT_SCOPED
  REALM_PRIVATE:
    text: REALM_PRIVATE
  ORGANIZATION_ONLY:
    text: ORGANIZATION_ONLY

```
</details>

</div>