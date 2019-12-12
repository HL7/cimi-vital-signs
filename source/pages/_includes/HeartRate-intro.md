The heart rate profile contains one observation, heart rate. In addition, the heart rate profile contains the following qualifying observations with associated SNOMED CT value sets: Body Position; Heart Rate Measurement Device (); Heart Rate Measurement Method (e.g. auscultation, doppler); Exercise Association; and Sleep status.

### Value Sets
| FHIR Valueset | VSAC OID | Purpose |
|---|---|---|
| Body Position Refset | [2.16.840.1.113762.1.4.1181.38](https://vsac.nlm.nih.gov/valueset/expansions?pr=all&rel=Latest&q=2.16.840.1.113762.1.4.1181.38) | This reference set   contains concepts used to result the patient's body position, referencing the   SNOMED Code 397155001 Body position (observable entity) and the LOINC term   "Body position with respect to gravity" 8361-8.                         |
| Heart Rate Device Type Refset | *Not in VSAC* | This reference set contains concepts used to result the type of device used to measure a heart rate, referencing the LOINC term "Type of Heart rate device" 8887-2. |
| Exercise Association Reference Set | |   The purpose of the reference set   is to document exercise associated with a measurement. Resulting   LOINC code 74008-4 "Exercise intensity".                                                                                                            |
| Heart Rate Measurement Body Location Refset | [2.16.840.1.113762.1.4.1181.29](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1181.29/expansion) | This reference set contains a constrained list body location values used to result the body location where a heart rate was measured, referencing the LOINC term "Heart rate measurement site", 41904-4. |
| Heart Rate Measurement Method Refset | *Not in VSAC* | This reference set contains concepts used to result the method used for a blood pressure measurement, referencing the LOINC term "Heart rate method” 8886-4. |
|    Respiratory Rate Measurement   Device Refset     |    This reference set contains   concepts used to result the type of device used to measure a heart rate,   referencing the LOINC term "Type of Breath rate   device" 9277-5.                                                                                |
| Exercise Association Reference Set | [2.16.840.1.113762.1.4.1181.36](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1181.36/expansion/Latest) |   The purpose of the reference set is to document exercise associated with a measurement. Resulting LOINC code 74008-4 "Exercise intensity". |
| Sleep Status Refset | [2.16.840.1.113762.1.4.1181.23](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1181.23/expansion/Latest) | This reference set contains values used to indicate the state of wakefulness during measurement |
| Vital Signs Associated Precondition Refset | *new* awaiting refset creation | Need definition |


### Use Cases

1.  Heart reat measured using radial artery palpation

| FHIR resource path | Text description | Code | Terminology |
|---|---|---|---|
| Observation.code | Heart Rate | 9279-1 | LOINC |
| Observation.method </br> Heart Rate Measurement Method value set | Heart rate measurement method refernce set (foundation metadata concept) </br> Heart rate measurement method reference set | 23901000205104 </br> 2.16.840.1.113762.1.4.1181.29 | SNOMED CT Solor extension </br> VSAC |
| Observation.method.value | Palpation | 113011001 | SNOMED CT |
| Observation.bodySite </br> Heart Rate Measurement Body Location Precoordinated value set | Heart Rate Measurement Body Location reference set (foundation metedata concept) </br> Heart Rate Measurement Body Location reference set | 23871000205104 </br> 2.16.840.1.113762.1.4.1181.29 | SNOMED CT Solor extension </br> VSAC |
| Observation.bodySite.value | Structure of radial artery (body structure) | 45631007 | SNOMED CT |

2.  Heart rate measurement during anesthesia

| FHIR resource path | Text description | Code | Terminology |
|---|---|---|---|
| Observation.code | Heart Rate | 9279-1 | LOINC |
| *Associated Precondition extension bindings* | | | |
| associatedPreconditionExt | | | LOINC |
| associatedPrecondition value set | *need description* </br> *need desc* | *need SCT code* </br> *need OID* | SNOMED CT Solor extension </br> VSAC |
| associatedPreconditionExt.value | During procedure | *need code* | SNOMED CT |
### Examples
- [Heart Rate Example](Observation-heartRate-example.html)

{% include link-list.md %}