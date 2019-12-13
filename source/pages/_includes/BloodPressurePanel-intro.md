The blood pressure profile contains two observations, systolic and diastolic blood pressure. These observations are commonly stored together as a “blood pressure”. In addition, the blood pressure profile contains the following qualifying observations with associated SNOMED CT value sets: Body Position (e.g. standing, sitting, Trendelenburg); Blood Pressure Cuff Size (from size 1 for premature babies up to thigh cuff);  Blood Pressure Device Type (e.g. aneroid sphygmomanometer, arterial line); Blood Pressure Measurement Site (Note that this value set contains both the artery, such as brachial artery,  and the external cuff location); Blood Pressure Method (e.g. auscultation, doppler); Body Side; Exercise Association Reference Set (e.g. before exercise, after exercise); Sleep status (e.g. awake, asleep); and Vital Signs Associated Precondition (e.g. before cardioversion, after cardioversion).

### Scope and Usage
#### ***Use Cases***

{% include BPUseCase1.html %}
<br>
{% include BPUseCase2.html %}
<br>
#### ***Value sets***

{% include BPValueSets.html %}

<br>
### Mandatory and Must Support Data Elements

#### Each resource must have:


- Observation.category (fixed to Vital Signs category)
- Observation.code (fixed to LOINC code 85354-9)
- Observation.subject
- Observation.effective
- Observation.component (Systolic Blood Pressure, LOINC 8450-6)
- Observation.component (Diastolic Blood Pressure, LOINC 8462-4)

    
#### Each resource must support:


- Body Position extension
- Measurement Device extension
- Blood Pressure Cuff Size extension
- Sleep Status extension
- Associated Precondition extension
- status
- category
- subject
- effecitve
- all components, including component.code and component.valueQuantity (value, unit, system, and code) 

<br>

{% include link-list.md %}