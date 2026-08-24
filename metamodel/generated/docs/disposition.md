---
search:
  boost: 5.0
---

# Slot: disposition

<div data-search-exclude markdown="1">



URI: [jumo:disposition](https://jumo.dev/schemas/jumo-v1/disposition)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [UpstreamToolEntry](UpstreamToolEntry.md) | Reason required when disposition is WITHHELD or QUARANTINED (Rego): exposing ... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [UpstreamToolDisposition](UpstreamToolDisposition.md) |
| Domain Of | [UpstreamToolEntry](UpstreamToolEntry.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [UpstreamToolEntry](UpstreamToolEntry.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:disposition |
| native | jumo:disposition |




## LinkML Source

<details>
```yaml
name: disposition
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: UpstreamToolEntry
domain_of:
- UpstreamToolEntry
range: UpstreamToolDisposition
required: true

```
</details></div>