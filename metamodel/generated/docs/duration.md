---
search:
  boost: 5.0
---

# Slot: duration


_Required when kind is ROLLING or CALENDAR; forbidden when METERED (Rego)._



<div data-search-exclude markdown="1">



URI: [jumo:duration](https://jumo.dev/schemas/jumo-v1/duration)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProviderQuotaWindow](ProviderQuotaWindow.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Duration](Duration.md) |
| Domain Of | [ProviderQuotaWindow](ProviderQuotaWindow.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProviderQuotaWindow](ProviderQuotaWindow.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:duration |
| native | jumo:duration |




## LinkML Source

<details>
```yaml
name: duration
description: Required when kind is ROLLING or CALENDAR; forbidden when METERED (Rego).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProviderQuotaWindow
domain_of:
- ProviderQuotaWindow
range: Duration

```
</details></div>