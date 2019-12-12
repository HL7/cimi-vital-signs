The measurement of the distance around an individual's head using the occipital-frontal plane.
This measurement is usually given in centimeters.

### Scope and Usage
#### Use Cases
**Example Usage Scenarios:**

1. Head circumference (occipital/frontal) measured by tape measure.

| FHIR resource path | Text description | Code | Terminology |
|---|---|---|---|
| Obesrvation.code | Head Occipital-frontal circumference | 9843-4 | LOINC |
| *Head circumference measurement device extension bindings* | | | |
| Observation.extension(measurementDeviceExt) | | | |
| Observation.extension(measurementDeviceExt) reference set | Measurement Device reference set (foundation metadata concept) </br> Measurement Device reference set | *need code* </br> 2.16.840.1.113762.1.4.1181.24 | SNOMED CT Solor extension </br> VSAC |
| Observation.extension(measurementDeviceExt).value | Measuring tape | 5179100 | SNOMED CT |




**Value sets:**

| FHIR value set | VSAC OID | Purpose |
|---|---|---|
| Head Circumference Measurement Device Refset | *not in VSAC* | The purpose of this reference set is to document devices or tools used to measure head circumference. |






### Examples

- [Head Circumference Example](Observation-headOccipitalFrontalCircumference-example.html)




{% include link-list.md %}