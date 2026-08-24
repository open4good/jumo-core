---
search:
  boost: 2.0
---


# Enum: AssistedJourneyIdentifierSuffix




_What is appended to a slugified identifier so two runs of the same journey do not collide._



<div data-search-exclude markdown="1">

URI: [jumo:AssistedJourneyIdentifierSuffix](https://jumo.dev/schemas/jumo-v1/AssistedJourneyIdentifierSuffix)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| NONE | None |  |
| RUN_PREFIX | None | The first eight characters of the run identifier |




## Slots

| Name | Description |
| ---  | --- |
| [suffix](suffix.md) |  |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: AssistedJourneyIdentifierSuffix
description: What is appended to a slugified identifier so two runs of the same journey
  do not collide.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  NONE:
    text: NONE
  RUN_PREFIX:
    text: RUN_PREFIX
    description: The first eight characters of the run identifier.

```
</details>

</div>