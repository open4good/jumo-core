---
search:
  boost: 2.0
---


# Enum: DeploymentTarget



<div data-search-exclude markdown="1">

URI: [jumo:DeploymentTarget](https://jumo.dev/schemas/jumo-v1/DeploymentTarget)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| docker-compose | None |  |
| systemd | None |  |
| kubernetes | None |  |
| none | None |  |




## Slots

| Name | Description |
| ---  | --- |
| [deployment](deployment.md) |  |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1






## LinkML Source

<details>
```yaml
name: DeploymentTarget
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
permissible_values:
  docker-compose:
    text: docker-compose
  systemd:
    text: systemd
  kubernetes:
    text: kubernetes
  none:
    text: none

```
</details>

</div>