---
search:
  boost: 2.0
---


# Enum: AssistedJourneyNavigationMode




_Whether the role may choose any dependency-ready step or must follow declaration order._



<div data-search-exclude markdown="1">

URI: [jumo:AssistedJourneyNavigationMode](https://jumo.dev/schemas/jumo-v1/AssistedJourneyNavigationMode)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| SEQUENTIAL | None |  |
| FREE | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [navigationMode](navigationMode.md) | FREE permits navigation among dependency-ready steps; dependencies remain man... |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: AssistedJourneyNavigationMode
description: Whether the role may choose any dependency-ready step or must follow
  declaration order.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  SEQUENTIAL:
    text: SEQUENTIAL
  FREE:
    text: FREE

```
</details>

</div>