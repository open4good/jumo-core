---
search:
  boost: 2.0
---


# Enum: RealmExposureMode




_Exposure and federation posture of the Realm. Defaults to PRIVATE_STEALTH. PRIVATE_STEALTH isolates the Realm from unauthenticated external discovery and intra-cluster visibility. CLUSTER_SHARED allows peer discovery and role sharing within the same hosted cluster. PUBLIC_DISCOVERABLE exposes public agent cards and external federation endpoints._



<div data-search-exclude markdown="1">

URI: [jumo:RealmExposureMode](https://jumo.dev/schemas/jumo-v1/RealmExposureMode)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| PRIVATE_STEALTH | None |  |
| CLUSTER_SHARED | None |  |
| PUBLIC_DISCOVERABLE | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [exposure](exposure.md) | Realm exposure posture |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: RealmExposureMode
description: Exposure and federation posture of the Realm. Defaults to PRIVATE_STEALTH.
  PRIVATE_STEALTH isolates the Realm from unauthenticated external discovery and intra-cluster
  visibility. CLUSTER_SHARED allows peer discovery and role sharing within the same
  hosted cluster. PUBLIC_DISCOVERABLE exposes public agent cards and external federation
  endpoints.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  PRIVATE_STEALTH:
    text: PRIVATE_STEALTH
  CLUSTER_SHARED:
    text: CLUSTER_SHARED
  PUBLIC_DISCOVERABLE:
    text: PUBLIC_DISCOVERABLE

```
</details>

</div>