### Scope

This blood pressure profile is used to capture an average blood pressure (systolic and diastolic) over a period of twenty four hours.  Currently there is not a LOINC code for the profile.  It has been bound to the SNOMED CT observable entity code 314463006 - 4 hour blood pressure (observable entity).

There are LOINC codes for the systolic and diastolic components.

#### About the extensions

Body Position - This is used to capture an individual's body position while taking a blood pressure.  Ususally "sitting".

Exercise Association - This is used to capture an individual's excercise status while taking blood pressure.  Usually "at rest".

observation-deviceCode - This is an intentional separation from the Observation.device backbone element.  Used for when only a device type needs to be recorded without the use of another resource.  Because the values of this extension span both device type and cuff size, the cardinality of this element has been set to 0..2.

Measurement Setting - This is used to capture the location (not body site) where the measurement(s) took place; At home, hospital, clinic, etc.

#### Example

[Twenty Four Hour Blood Pressure](Observation-TwentyFourHourBloodPressure-example.html)

#### Value Sets

{% include 24HBPValueSets.html %}
