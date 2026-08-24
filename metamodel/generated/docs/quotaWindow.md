---
search:
  boost: 5.0
---

# Slot: quotaWindow

<div data-search-exclude markdown="1">



URI: [jumo:quotaWindow](https://jumo.dev/schemas/jumo-v1/quotaWindow)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProviderAccountSpec](ProviderAccountSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ProviderQuotaWindow](ProviderQuotaWindow.md) |
| Domain Of | [ProviderAccountSpec](ProviderAccountSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProviderAccountSpec](ProviderAccountSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:quotaWindow |
| native | jumo:quotaWindow |




## LinkML Source

<details>
```yaml
name: quotaWindow
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProviderAccountSpec
domain_of:
- ProviderAccountSpec
range: ProviderQuotaWindow
required: true
inlined: true

```
</details></div>