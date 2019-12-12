The temperature profile contains one observation, temperature. In addition, the temperature profile contains the following qualifying observations with associated SNOMED CT value sets: Body Position; Temperature Measurement Device (); Temperature Measurement Method (e.g. auscultation, doppler); Exercise Association; and Sleep status.

### Scope and Usage
#### Use Cases
**Example Usage Scenarios:**

1. Rectal temperature

| FHIR resource path | Text description | Code | Terminology |
|---|---|---|---|
| Obesrvation.code | Temperature | 8310-5 | LOINC |
| Observation.bodySite </br> Temperature measurement body location reference set | Body temperature measurement site reference set (foundation metadate concept) </br> Temperature measurement body location reference set | 891000205106 </br> 2.16.840.1.113762.1.4.1181.29 | |SNOMED CT Solor extension </br> VSAC |
| Observation.bodySite.value | Rectum structure (body structure) | 3402009* | SNOMED CT |




**Value sets:**

| FHIR value set | VSAC OID | Purpose |
|---|---|---|
| Body Temperature Measurement Method and Device Refset | [2.16.840.1.113762.1.4.1181.35](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1181.35/expansion/Latest) | Body temperature is taken, and the user records measurement method or instrument used to evaluate the temperature. It combines method and device values because they often overlap in EHR documentation systems. |
| Body Temperature Measurement Site Refset | [2.16.840.1.113762.1.4.1181.44](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1181.44/expansion/Latest) | This reference set a constrained list body location values used to result the body location where a body temperature was measured, referencing the SNOMED Code 1520000000000 "Body temperature measurement site (observable entity)" and the LOINC term "Body temperature measurement site", 8327-9. |
| Exercise Association Reference Set | [2.16.840.1.113762.1.4.1181.36](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1181.36/expansion/Latest) | The purpose of the reference set is to document exercise associated with a measurement. Resulting LOINC code 74008-4 "Exercise intensity". |


### Examples

- [Blood Pressure Example](Observation-bodyTemperature-example.html)




{% include link-list.md %}