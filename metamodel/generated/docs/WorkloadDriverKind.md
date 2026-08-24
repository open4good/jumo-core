---
search:
  boost: 2.0
---


# Enum: WorkloadDriverKind




_Closed over the drivers activatable by machine-pull-workload-supervisor. The SPI stays platform-neutral for a later home-automation or mobile driver -- a new value is appended when that driver actually exists, not reserved speculatively here._



<div data-search-exclude markdown="1">

URI: [jumo:WorkloadDriverKind](https://jumo.dev/schemas/jumo-v1/WorkloadDriverKind)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| MCP_REGISTRY | None |  |
| MCP_GATEWAY | None |  |
| MCP_DISCOVERY | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [driverKind](driverKind.md) |  |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: WorkloadDriverKind
description: Closed over the drivers activatable by machine-pull-workload-supervisor.
  The SPI stays platform-neutral for a later home-automation or mobile driver -- a
  new value is appended when that driver actually exists, not reserved speculatively
  here.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  MCP_REGISTRY:
    text: MCP_REGISTRY
  MCP_GATEWAY:
    text: MCP_GATEWAY
  MCP_DISCOVERY:
    text: MCP_DISCOVERY

```
</details>

</div>