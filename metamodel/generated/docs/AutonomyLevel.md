---
search:
  boost: 2.0
---


# Enum: AutonomyLevel




_Progressive autonomy ladder. Configured per action class, channel, audience, risk and Realm -- never as one global agent level._



<div data-search-exclude markdown="1">

URI: [jumo:AutonomyLevel](https://jumo.dev/schemas/jumo-v1/AutonomyLevel)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| OBSERVE | None |  |
| DRAFT | None |  |
| SUPERVISED | None |  |
| BOUNDED_AUTONOMOUS | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [defaultAutonomy](defaultAutonomy.md) |  |
| [autonomy](autonomy.md) |  |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: AutonomyLevel
description: Progressive autonomy ladder. Configured per action class, channel, audience,
  risk and Realm -- never as one global agent level.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  OBSERVE:
    text: OBSERVE
  DRAFT:
    text: DRAFT
  SUPERVISED:
    text: SUPERVISED
  BOUNDED_AUTONOMOUS:
    text: BOUNDED_AUTONOMOUS

```
</details>

</div>