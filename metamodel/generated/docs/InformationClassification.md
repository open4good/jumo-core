---
search:
  boost: 2.0
---


# Enum: InformationClassification




_Confidentiality dimension, split out from the single DataScope enum: classification, ownership, and declassification are distinct concerns (docs/concepts/positionnement-conceptuel.md#flux-dinformation). Used where an explicit cross-Realm release transformation is modeled, alongside ReleaseTransformation and ReleaseCompartment below -- not a replacement for DataScope's simpler publication-boundary role._



<div data-search-exclude markdown="1">

URI: [jumo:InformationClassification](https://jumo.dev/schemas/jumo-v1/InformationClassification)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| PUBLIC | None |  |
| INTERNAL | None |  |
| REALM_CONFIDENTIAL | None |  |
| SECRET | None |  |













## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: InformationClassification
description: 'Confidentiality dimension, split out from the single DataScope enum:
  classification, ownership, and declassification are distinct concerns (docs/concepts/positionnement-conceptuel.md#flux-dinformation).
  Used where an explicit cross-Realm release transformation is modeled, alongside
  ReleaseTransformation and ReleaseCompartment below -- not a replacement for DataScope''s
  simpler publication-boundary role.'
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  PUBLIC:
    text: PUBLIC
  INTERNAL:
    text: INTERNAL
  REALM_CONFIDENTIAL:
    text: REALM_CONFIDENTIAL
  SECRET:
    text: SECRET

```
</details>

</div>