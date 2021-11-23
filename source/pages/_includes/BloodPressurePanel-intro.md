### Scope

The Blood Pressure Panel profile contains three observations, systolic, diastolic, and mean arterial blood pressure. These are slices of the component element (Observation.component) and the value (Observation.value) has been constrained out (cardinality set to 0).  Systolic and Diastolic blood pressures are commonly stored together as a “blood pressure”. There are times when a mean arterial pressure needs to be stored also, so it was included.  The only required observation of the three is Systolic BP.  By doing so the panel may be used to record any combination of Systolic + Diastolic, Systolic only, or all three.  This negates the need to create individual FHIR profiles for any of the three.

#### About the extensions

In addition, the Blood Pressure Panel profile contains the following qualifying observations (extensions) with associated SNOMED CT value sets:

Body Position - This is used to capture an individual's body position while taking a blood pressure.  Usually "sitting".

Exercise Association - This is used to capture an individual's exercise status while taking blood pressure.  Usually "at rest".

Measurement Setting - This is used to capture the location (not body site) where the measurement(s) took place; At home, hospital, clinic, etc.

Sleep Status - This is used to capture whether or not the measurement was taken while the subject was asleep or awake.

#### Observation.device

The Blood Pressure Panel profile references a BPDevice profile of the Device resource in Observation.device.  The BPDevice profile is designed to be used specifically for blood pressure observations and includes an extension for Blood Pressure Cuff Size.

#### About Mean Arterial Pressure

Mean Arterial Pressure is a calculated observation based on the Systolic and Diastolic blood pressure measurements and is defined as the average pressure in an individual's arteries during one cardiac cycle.  It is *not* an average of several measurements.

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
- Observation.device (reference to BPDevice profile)
- Sleep Status extension
- Measurement Setting extension
- all components, including component.code and component.valueQuantity (value, unit, system, and code) 

{% include link-list.md %}
