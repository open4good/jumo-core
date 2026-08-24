---
search:
  boost: 2.0
---


# Enum: FieldRepresentation




_Semantic shape of one field's value, never a component name. A front-end component registry is the only place this resolves to a concrete widget. STRUCTURED_YAML also names a WritePathEditor value (interface.yaml): same underlying shape, two different concerns -- there a write-target file format, here a field's read/edit representation -- so the shared name is deliberate, not an oversight._



<div data-search-exclude markdown="1">

URI: [jumo:FieldRepresentation](https://jumo.dev/schemas/jumo-v1/FieldRepresentation)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| SHORT_TEXT | None |  |
| MULTILINE_TEXT | None |  |
| IDENTIFIER | None |  |
| ENUMERATION | None |  |
| ENTITY_REFERENCE | None |  |
| ENTITY_COLLECTION | None |  |
| BOOLEAN_FLAG | None |  |
| QUANTITY | None |  |
| DURATION | None |  |
| TIMESTAMP | None |  |
| SECRET | None |  |
| PATH_GLOB | None |  |
| CAPABILITY_NAME | None |  |
| MARKDOWN | None |  |
| STRUCTURED_YAML | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [representation](representation.md) |  |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: FieldRepresentation
description: 'Semantic shape of one field''s value, never a component name. A front-end
  component registry is the only place this resolves to a concrete widget. STRUCTURED_YAML
  also names a WritePathEditor value (interface.yaml): same underlying shape, two
  different concerns -- there a write-target file format, here a field''s read/edit
  representation -- so the shared name is deliberate, not an oversight.'
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  SHORT_TEXT:
    text: SHORT_TEXT
  MULTILINE_TEXT:
    text: MULTILINE_TEXT
  IDENTIFIER:
    text: IDENTIFIER
  ENUMERATION:
    text: ENUMERATION
  ENTITY_REFERENCE:
    text: ENTITY_REFERENCE
  ENTITY_COLLECTION:
    text: ENTITY_COLLECTION
  BOOLEAN_FLAG:
    text: BOOLEAN_FLAG
  QUANTITY:
    text: QUANTITY
  DURATION:
    text: DURATION
  TIMESTAMP:
    text: TIMESTAMP
  SECRET:
    text: SECRET
  PATH_GLOB:
    text: PATH_GLOB
  CAPABILITY_NAME:
    text: CAPABILITY_NAME
  MARKDOWN:
    text: MARKDOWN
  STRUCTURED_YAML:
    text: STRUCTURED_YAML

```
</details>

</div>