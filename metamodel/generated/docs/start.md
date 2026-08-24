---
search:
  boost: 5.0
---

# Slot: start

<div data-search-exclude markdown="1">



URI: [jumo:start](https://jumo.dev/schemas/jumo-v1/start)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [QuietHoursWindow](QuietHoursWindow.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [QuietHoursWindow](QuietHoursWindow.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [QuietHoursWindow](QuietHoursWindow.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^([01][0-9]|2[0-3]):[0-5][0-9]$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:start |
| native | jumo:start |




## LinkML Source

<details>
```yaml
name: start
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: QuietHoursWindow
domain_of:
- QuietHoursWindow
range: string
required: true
pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]$

```
</details></div>