The respiratory rate profile contains one observation, respiratory rate. In addition, the respiratory rate profile contains the following qualifying observations with associated SNOMED CT value sets: Body Position; Respiratory Rate Measurement Device (Peak flow meter); Respiratory Rate Measurement Method (e.g. auscultation, inspection); Exercise Association; and Sleep status.

### Value Sets

| FHIR Value set | VSAC OID | Purpose |
|---|---|---|
|    Body Position Refset | [2.16.840.1.113762.1.4.1181.38](https://vsac.nlm.nih.gov/valueset/expansions?pr=all&rel=Latest&q=2.16.840.1.113762.1.4.1181.38) |   This reference set   contains concepts used to result the patient's body position, referencing the   SNOMED Code 397155001 Body position (observable entity) and the LOINC term   "Body position with respect to gravity" 8361-8.    |
| Respiratory Rate Measurement Device Refset | [2.16.840.1.113762.1.4.1181.34](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1181.34/expansion/Latest) | This reference set contains concepts used to result the type of device used to measure a heart rate, referencing the LOINC term "Type of Breath rate device" 9277-5. |
| Respiratory Rate Measurement Method | [2.16.840.1.113762.1.4.1181.31](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1181.31/expansion/Latest) | This reference set contains concepts used to result the method used for a respiratory   rate measurement, referencing the LOINC term "Breath rate method” 9275-9. |
| Vital Signs Associated Precondition Refset | new | awaiting definition |



### Use Cases
1.  Respiratory rate taken with patient sleeping in a supine position

| FHIR resource path | Text description | Code | Terminology |
|---|---|---|---|
| Observation.code | Respiratory Rate| 9279-1 | LOINC |
| **Body Position extension bindings | | | |
|bodyPositionExt | Body position with respect to gravity | 8361-8 | LOINC |
|bodyPositionExt value sets | Body position reference set (foundation metadata concept) </br> Body Position reference set | 881000205109 </br> 2.16.840.1.113762.1.4.1181.38 | SNOMED CT Solor extension </br> VSAC |
|bodyPositionExt.value | Supine body position (finding) | 40199007 | SNOMED CT |
| **Sleep Status extension bindings** | | | |
| sleepStatusExt | Sleep Status | | LOINC |
| sleepStatusExt value sets | Sleep Status Refset | 24011000205104 | SNOMED CT Solor extension |
| sleepStatus.value | Asleep (finding) | 248220008 | SNOMED CT |

2.  Respiratory Rate taken during exercise.

| FHIR resource path | Text description | Code | Terminology |
|---|---|---|---|
| Observation.code | Respiratory Rate | 9279-1 | LOINC |
| Exercise Association extension bindings | | | |
| exerciseAssociationExt | Exercise Association | 8361-8 | LOINC |
| exerciseAssociationExt value sets | Exercise Association reference set (foundation metadata concept) </br> Exercise Association reference set | 24371000205107 </br> 2.16.840.1.113762.1.4.1181.36 | SNOMED CT Solor extension </br> VSAC |
| exerciseAssociation.value | During exercise (qualifier value) | 309604004 | SNOMED CT |


### Examples
- [Respiratory Rate Example](Observation-respiratoryRate-example.html)

{% include link-list.md %}