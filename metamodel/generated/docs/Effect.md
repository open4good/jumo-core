---
search:
  boost: 2.0
---


# Enum: Effect




_Policy outcome. Only policies authorize; principles never do (ADR-0005)._



<div data-search-exclude markdown="1">

URI: [jumo:Effect](https://jumo.dev/schemas/jumo-v1/Effect)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| ALLOW | None |  |
| DENY | None |  |
| ALLOW_WITH_OBLIGATIONS | None |  |
| REQUIRE_APPROVAL | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [effect](effect.md) |  |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: Effect
description: Policy outcome. Only policies authorize; principles never do (ADR-0005).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  ALLOW:
    text: ALLOW
  DENY:
    text: DENY
  ALLOW_WITH_OBLIGATIONS:
    text: ALLOW_WITH_OBLIGATIONS
  REQUIRE_APPROVAL:
    text: REQUIRE_APPROVAL

```
</details>

</div>