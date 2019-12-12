
### Scope and Usage
#### Use Cases
**Example Usage Scenarios:**

1. Oxygen saturation measured via pulse oximeter.

| FHIR resource path | Text description | Code | Terminology |
|---|---|---|---|
| Obesrvation.code | Oxygen saturation in Arterial blood | 2708-6 | LOINC |
| *Associated Precondition extension bindings* | | | |
| Observation.extension(sensorDescriptionExt) reference set | Sensor Description reference set (foundation metadata concept) </br> Sensor Description reference set | *need code* </br> 2.16.840.1.113762.1.4.1181.24 | SNOMED CT Solor extension </br> VSAC |




**Value sets:**

| FHIR value set | VSAC OID | Purpose |
|---|---|---|
| Oxygen saturation sensor type reference set | [2.16.840.1.113762.1.4.1181.24](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1181.24/expansion/Latest) | This reference set contains the instrument used when an oxygen saturation is measured in arterial blood by pulse oximetry, referencing the LOINC term "Oxygen Saturation Sensor Type" 73803-9 |
| Oxygen Saturation Body Location value set | [2.16.840.1.113762.1.4.1181.27](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1181.27/expansion/Latest) | This reference set contains a constrained list body location values used to record the site where an oximeter was placed, and capillary oxygen saturation measured. |





### Examples

- [Body Length Example](Observation-bodyLength-example.html)




{% include link-list.md %}