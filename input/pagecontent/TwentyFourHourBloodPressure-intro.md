### Scope

This blood pressure profile is used to capture an average blood pressure (systolic and diastolic) over a period of twenty four hours.  Currently there is not a LOINC code for the profile.  It has been bound to the SNOMED CT observable entity code 314463006 - 24 hour blood pressure (observable entity).

There are LOINC codes for the systolic and diastolic components.

#### About the extensions

Body Position - This is used to capture an individual's body position while taking a blood pressure.  Ususally "sitting".

Exercise Association - This is used to capture an individual's excercise status while taking blood pressure.  Usually "at rest".

observation-deviceCode - This is an intentional separation from the Observation.device backbone element.  Used for when only a device type needs to be recorded without the use of another resource.  Because the values of this extension span both device type and cuff size, the cardinality of this element has been set to 0..2.

Measurement Setting - This is used to capture the location (not body site) where the measurement(s) took place; At home, hospital, clinic, etc.

#### Example

[Twenty Four Hour Blood Pressure](Observation-TwentyFourHourBloodPressure-example.html)

#### Value Sets

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
				<td>This value set is used to result the Body Position extension.</td>
			</tr>
			<tr>
				<td><a href="ValueSet-exertionPhaseVS.html">Exertion Phase value set</a></td>
				<td>This value set is used to result the Exercise Association extension.</td>
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
			  <td><a href="ValueSet-MeasSettingVS.html">Measurement Setting value set</a></td>
			  <td>This value set is used to result the Mesurement Setting extension.</td>
			</tr>
		</tbody>
	</table>
</div>