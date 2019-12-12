The Body Length profile contains one observation, “Body height –lying”. This is a precoordinated observation that includes the body position “Lying”. This was requested by users to use when measuring an infant’s length. In addition, the Body Height Lying profile contains one qualifying observations with an associated SNOMED CT value sets: Body Height Measurement Devices Refset.

### Scope and Usage
#### Use Cases
**Example Usage Scenarios:**

1. Height lying measured using tape measure

| FHIR resource path | Text description | Code | Terminology |
|---|---|---|---|
| Obesrvation.code | Body Height | 8306-3 | LOINC |
| *Body height measurement device extension bindings* | | | |
| Observation.extension(measurementDeviceExt) | | | |
| measurementDeviceExt (Body Height measurement device reference set) | Body Height measurement device reference set (foundation metadata concept) </br> Body Height measurement device reference set | 23891000205100 </br> 2.16.840.1.113762.1.4.1181.28 | SNOMED CT Solor extension </br> VSAC |
| Observation.extension(measurementDeviceExt).value | Measuring tape | 5179100 | SNOMED CT |



**Value sets:**

| FHIR value set | VSAC OID | Purpose |
|---|---|---|
| Body Height Measurement Device Refset | [2.16.840.1.113762.1.4.1181.28](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1181.28/expansion/Latest) | This reference set is used to result LOINC code 41910-1 "Type of Height device" |




### Examples

- [Body Length Example](Observation-bodyLength-example.html)




{% include link-list.md %}