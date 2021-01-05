### Scope

The Blood Pressure Panel profile contains three observations, systolic, diastolic, and mean arterial blood pressures. These are slices of the component element (Observation.component) and the value (Observation.value) has been constrained out (cardinality set to 0).  Systolic and Diastolic blood pressures are commonly stored together as a “blood pressure”. There are times when a mean arterial pressure needs to be stored also, so it was included.  The only required observation of the three is Systolic BP.  By doing so the panel may be used to record any combination of Systolic + Diastolic, Systolic only, or all three.  This negates the need to create individual FHIR profiles for any of the three.

In addition, the Blood Pressure Panel profile contains the following qualifying observations with associated SNOMED CT value sets: Body Position (e.g. standing, sitting, Trendelenburg); Blood Pressure Measurement Site (note that this value set contains both the artery, such as brachial artery,  and the external cuff location); Blood Pressure Method (e.g. auscultation, doppler); Exercise Association Reference Set (e.g. before exercise, after exercise); observation-deviceCode which includes cuff sizes (from size 1 for premature babies up to thigh cuff) and blood pressure device types (e.g. aneroid sphygmomanometer, arterial line).

#### About the extensions

Body Position - This is used to capture an individual's body position while taking a blood pressure.  Usually "sitting".

Exercise Association - This is used to capture an individual's exercise status while taking blood pressure.  Usually "at rest".

observation-deviceCode - This is an intentional separation from the Observation.device backbone element.  Used for when only a device type needs to be recorded without the use of another resource.  Because the values of this extension span both device type and cuff size, the cardinality of this element has been set to 0..2.

Measurement Setting - This is used to capture the location (not body site) where the measurement(s) took place; At home, hospital, clinic, etc.

Measurement Protocol - This is used to capture a set of rules used for the calculation of the blood pressure average.  This can be institution specific, provider specific, clinical society specific (i.e. AMA), etc.

Sleep Status - This is used to capture whether or not the measurement was taken while the subject was asleep or awake.

#### About Mean Arterial Pressure

Mean Arterial Pressure is a calculated observation bases on the Systolic and Diastolic blood pressure measurements and is defined as the average pressure in an individual's arteries during one cardiac cycle.  It is *not* an average of several measurements.

Its formula is (SystolicBP + 2(DiastolicBP)) divided by 3; *(SBP + 2(DBP))/3*.   There are times when this needs to be known so it is included as an optional component in this panel.

#### *Example*

The following examples are provided to illustrate conformant resource content to this profile.

- [Blood Pressure Example](Observation-BloodPressurePanel-example.html)

#### *Use Cases*

{% include BPUseCase1.html %}

{% include BPUseCase2.html %}

#### ***Value sets***

{% include BPValueSets.html %}

### Mandatory and Must Support Data Elements

#### Each resource must have

- Observation.category (fixed to Vital Signs category)
- Observation.code (fixed to LOINC code 85354-9)
- Observation.subject
- Observation.effective
- Observation.component (Systolic Blood Pressure, LOINC 8480-6)
- Observation.status

#### Each resource must support

- Body Position extension
- Exercise Association extension
- observation-deviceCode extension
- Sleep Status extension
- Measurement Setting extension
- Measurement Protocol extension
- all components, including component.code and component.valueQuantity (value, unit, system, and code) 

{% include link-list.md %}
