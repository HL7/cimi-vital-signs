### Scope

This blood pressure profile is used to capture the calculated average blood pressure from a set of individual measurements.

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

<div>
	<table class="grid">
		<thead>
			<tr>
			  <th width="20%">Value Set</th>
			  <th width="40%">Purpose</th>
			</tr>
		</thead>
		<tbody>
			<tr>
			  <td><a href="ValueSet-bodyPositionVS.html">Body Position value set</a></td>
			  <td>This value set contains concepts used to result the patient's body position, referencing the SNOMED Code 397155001 Body position (observable entity) and the LOINC term "Body position with respect to gravity" 8361-8.</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-bpMeasDeviceVS.html">Blood Pressure Device Type value set</a></td>
			  <td>This value set contains concepts used to result the type of device used to measure a body blood pressure, referencing the SNOMED Code 23591000205102 “Blood pressure device type (observable entity)" and the LOINC term “Type of Blood pressure device” 41901-0.</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-bpmeasbodylocationprecoord.html">Blood Pressure Measurement Site value set</a></td>
			  <td>This value set contains a constrained list body location values used to result the body location where a blood pressure was measured, referencing the SNOMED Code 2281000205100 “Blood pressure measurement site (observable entity)” and the LOINC term "Blood pressure measurement site", 41904-4.</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-bpMeasMethodVS.html">Blood Pressure Method value set</a></td>
			  <td>This value set contains concepts used to result the method used for a blood pressure measurement, referencing the SNOMED Code 2291000205103 “Blood pressure method (observable entity)” and the LOINC term "Blood pressure method" 8357-6.</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-exertionPhaseVS.html">Exertion Phase value set</a></td>
			  <td>The purpose of the value set is to document exercise associated with a measurement. Resulting LOINC code 74008-4 "Exercise intensity".</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-sleepStatusVS.html">Sleep Status value set</a></td>
			  <td>This value set contains values used to indicate the state of wakefulness during measurement.</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-MeasSettingVS.html">Measurement Setting value set</a></td>
			  <td>This value set is used to result the Mesurement Setting extension.</td>
			</tr>
		</tbody>
	</table>
</div>