### Scope

This blood pressure profile is used to capture the calculated average blood pressure from a set of individual measurements.  Currently there is not a LOINC code for this nor for its components of Average Systolic Blood Pressure or Average Diastolic Blood Pressure.  They have been requested and the Observation.code and Observation.component.code bindings will be adjusted as soon as they are released.  SNOMED CT Observable Entity codes have been bound to the profile and its components in the interim.

#### About the extensions

The expectation for the extensions in this profile are that if populated, they represent that all of the observations used to calculate the average blood pressure have the same value in the extension as the average.  For example, if the body position given in an instance of the Average Blood Pressure profile is "sitting" then any single measuremnt used in the calculation would have been obtained with the patient in a sitting position.

Body Position - This is used to capture an individual's body position while taking a blood pressure.

Exercise Association - This is used to capture an individual's excercise status while taking blood pressure.

observation-deviceCode - This is an intentional separation from the Observation.device backbone element.  Used for when only a device type needs to be recorded without the use of another resource.  Because the values of this extension span both device type and cuff size, the cardinality of this element has been set to 0..2.

Measurement Setting - This is used to capture the location (not body site) where the measurement(s) took place; At home, hospital, clinic, etc.

Measurement Protocol - This is used to capture a set of rules used for the calculation of the blood pressure average; the number of measurments to be obtained, the time interval between measurements, the overall period for the measurements, and any instructions such as "take while sitting, after five minutes", etc..  This can be institution specific, provider specific, clinical society specific (i.e. AMA), etc.

#### *Example*

[AverageBloodPressure-example](Observation-AverageBloodPressure-example.html)

#### *Value Sets*

{% include AvgBPValueSets.html %}