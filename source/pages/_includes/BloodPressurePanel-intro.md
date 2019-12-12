The blood pressure profile contains two observations, systolic and diastolic blood pressure. These observations are commonly stored together as a “blood pressure”. In addition, the blood pressure profile contains the following qualifying observations with associated SNOMED CT value sets: Body Position (e.g. standing, sitting, Trendelenburg); Blood Pressure Cuff Size (from size 1 for premature babies up to thigh cuff);  Blood Pressure Device Type (e.g. aneroid sphygmomanometer, arterial line); Blood Pressure Measurement Site (Note that this value set contains both the artery, such as brachial artery,  and the external cuff location); Blood Pressure Method (e.g. auscultation, doppler); Body Side; Exercise Association Reference Set (e.g. before exercise, after exercise); Sleep status (e.g. awake, asleep); and Vital Signs Associated Precondition (e.g. before cardioversion, after cardioversion).

### Scope and Usage
#### Use Cases
**Example Usage Scenarios:**

{% include BPUseCases.html %}


**Value sets:**

{% include BPValueSets.html %}

### Mandatory and Must Support Data Elements


**Each [resource] must have:**


1.  Observation.category (fixed to Vital Signs Category)
2.  Observation.code (fixed to LOINC code 85354-9)
3.  Observation.subject
4.  Observation.effective
5.  Observation.component (Systolic Blood Pressure, LOINC 8450-6)
6.  Observation.component (Diastolic Blood Pressure, LOINC 8462-4)
    
**Each [resource] must support:**


1.  Body Position extension
2.  Measurement Device extension
3.  Blood Pressure Cuff Size extension
4.  Sleep Status extension
5.  Associated Precondition extension
6.  status
7.  category
8.  subject
9.  effecitve
10. all components, including component.code and component.valueQuantity (value, unit, system, and code) 


### Examples

- [Blood Pressure Example](Observation-BloodPressurePanel-example.html)




{% include link-list.md %}