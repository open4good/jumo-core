---
search:
  boost: 5.0
---

# Slot: upstreamInventory


_Every tool the upstream server offered when it was looked at, exposed or not -- enumerating what was held back is the point of the whole document._



<div data-search-exclude markdown="1">



URI: [jumo:upstreamInventory](https://jumo.dev/schemas/jumo-v1/upstreamInventory)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConnectorAppraisalSpec](ConnectorAppraisalSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [UpstreamToolEntry](UpstreamToolEntry.md) |
| Domain Of | [ConnectorAppraisalSpec](ConnectorAppraisalSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ConnectorAppraisalSpec](ConnectorAppraisalSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:upstreamInventory |
| native | jumo:upstreamInventory |




## LinkML Source

<details>
```yaml
name: upstreamInventory
description: Every tool the upstream server offered when it was looked at, exposed
  or not -- enumerating what was held back is the point of the whole document.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ConnectorAppraisalSpec
domain_of:
- ConnectorAppraisalSpec
range: UpstreamToolEntry
required: true
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 1

```
</details></div>