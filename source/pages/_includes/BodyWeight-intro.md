The Body Weight profile contains one observation, body weight. In addition, the temperature profile contains the following qualifying observations with associated SNOMED CT value sets: Body Position; Temperature Measurement Device (); Temperature Measurement Method (e.g. auscultation, doppler); Exercise Association; and Sleep status.
Note that the measurement method and device value sets are combined because there was a “fuzzy” line between method and device.


### Scope and Usage
#### Use Cases
**Example Usage Scenarios:**

1. Weight measured with patient fully clothed and wearing shoes.

| FHIR resource path | Text description | Code | Terminology |
|---|---|---|---|
| Obesrvation.code | Body Weight | 29463-7 | LOINC |
| *Associated Precondition extension bindings* | | | |
| Observation.extension(associatedPreconditionExt) | | | |
| associatedPreconditionExt reference set | *need Solor code* </br> *need VSAC OID*  | </br> | SNOMED CT Solor extension </br> VSAC |
| Observation.extension(associatedPreconditionExt).value | Fully Clothed |  | SNOMED CT |
| Observation.extension(clothingWornDuringMeasureExt) | | | |
| clothingWornDuringMeasureExt reference set | *need Solor code*</br> *need VSAC OID* |  </br> | SNOMED CT Solor extension </br> VSAC | 
| Observation.extension(clothingWornDuringMeasureExt).value | Wearing shoes | *need code* | SNOMED CT |



**Value sets:**

| FHIR value set | VSAC OID | Purpose |
|---|---|---|
| Weight Measurement Device Refset | *not in VSAC* | This reference set contains concepts used to result the type of instrument used to measure a body weight, referencing the LOINC term "XXX" (need LOINC). |
| Clothing Worn During Measure reference set | [2.16.840.1.113762.1.4.1181.26](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1181.26/expansion/Latest) | This reference set contains concepts used to result the amount of clothing worn during the measure, referencing the SNOMED Code 248159006 "State of dress (observable entity)" and the LOINC term "Clothing worn during measure” 8352-7.
| Weight precondition reference set | [2.16.840.1.113762.1.4.1181.25](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1181.25/expansion/Latest) | Weight precondition values are used when the patient has something attached to their body, such as a cast, prosthesis, or oxygen that may change the patients weight prior to the weight measurement. |




### Examples

- [Body Length Example](Observation-bodyLength-example.html)




{% include link-list.md %}