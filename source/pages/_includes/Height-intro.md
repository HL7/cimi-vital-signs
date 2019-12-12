The Body Height profile contains one observation, body height. In addition, the temperature profile contains the following qualifying observations with associated SNOMED CT value sets: Body Position; Temperature Measurement Device (); Temperature Measurement Method (e.g. auscultation, doppler); Exercise Association; and Sleep status.

### Scope and Usage
#### Use Cases
**Example Usage Scenarios:**

1. Height measured using tape measure

| FHIR resource path | Text description | Code | Terminology |
|---|---|---|---|
| Obesrvation.code | Body Height | 8302-2 | LOINC |
| *Body height measurement device extension bindings* | | | |
| Observation.extension(measurementDeviceExt) | | | |
| measurementDeviceExt (Body Height measurement device refernce set) | Body Height measurement device reference set (foundation metadata concept) </br> Body Height measurement device reference set | 23891000205100 </br> 2.16.840.1.113762.1.4.1181.28 | SNOMED CT Solor extension </br> VSAC |
| Observation.extension(measurementDeviceExt).value | Measuring tape | 5179100 | SNOMED CT |



**Value sets:**

| FHIR value set | VSAC OID | Purpose |
|---|---|---|
| Body Height Measurement Device Refset | [2.16.840.1.113762.1.4.1181.28](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1181.28/expansion/Latest) | This reference set is used to result LOINC code 41910-1 "Type of Height device" |
| Body Position Refset| [2.16.840.1.113762.1.4.1181.38](https://vsac.nlm.nih.gov/valueset/expansions?pr=all&rel=Latest&q=2.16.840.1.113762.1.4.1181.38) | This reference set contains concepts used to result the patient's body position, referencing the SNOMED Code 397155001 Body position (observable entity) and the LOINC term "Body position with respect to gravity" 8361-8. |



### Examples

- [Height Example](Observation-height-example.html)




{% include link-list.md %}