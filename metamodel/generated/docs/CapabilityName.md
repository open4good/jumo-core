---
search:
  boost: 1.0
---# Type: CapabilityName




_Capability namespace grammar: <domain>.[<resource>.]<verb>[.<qualifier>], two to four lowercase segments. Every name used anywhere must resolve against .jumo/capabilities/._



<div data-search-exclude markdown="1">

URI: [xsd:string](http://www.w3.org/2001/XMLSchema#string)

## Type Properties

| Property | Value |
| --- | --- |
| Type Of | [String](String.md) |
| Base | `str` |
| Type URI | [xsd:string](http://www.w3.org/2001/XMLSchema#string) |
## Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^[a-z][a-z0-9]*(\.[a-z][a-z0-9]*){1,3}$` |










## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | xsd:string |
| native | jumo:CapabilityName |




</div>