### Scope

The heart rate profile contains one observation, heart rate. In addition, the heart rate profile contains the following qualifying observations with associated SNOMED CT value sets: Body Position, observation-deviceCode, Exercise Association, SleepStatus, and MeasurementSetting.

*Note*

Many times Heart Rate is measured at the same time as a blood pressure, using a blood pressure device.  Although this profile does not constrain the Observation.device element to the [BPDevice profile](StructureDefinition-BPDevice.html) as we did for the blood pressure profiles, it may be used to record the blood pressure device used to obtain the heart rate.  This constraint was not made due to the fact that there are many devices primarily used for other measurements (e.g. blood pressure, oxygen saturation via pulse oximetry) that could also measure a heart rate.  Constraining Observation.device to BPDevice would falsely limit it.

#### Examples

The following examples are provided to illustrate conformant resource content to this profile.

- [Heart Rate Example](Observation-heartRate-example.html)

#### *Use Case*

{% include HeartRateUseCase.html %}

#### *Value sets*

{% include HeartRateValueSets.html %}

{% include link-list.md %}
