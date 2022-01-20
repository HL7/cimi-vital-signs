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

<div>
	<h4>1.	Blood pressure taken while in a lying position</h4>
	<table class="grid">
		<thead>
			<tr>
			  <th width="20%">FHIR path and element binding</th>
			  <th width="40%">Text Description</th>
			  <th width="20%">Code</th>
			  <th width="20%">Terminology</th>
			</tr>
		</thead>
		<tbody>
			<tr>
			  <td>Observation.code</td>
			  <td>Blood Pressure Panel with all children optional</td>
			  <td>85354-9</td>
			  <td>LOINC</td>
			</tr>
			<tr>
			  <td>Observation.component.code</td>
			  <td>Systolic Blood Pressure</td>
			  <td>8480-6</td>
			  <td>LOINC</td>
			</tr>
			<tr>
			  <td>Observation.component.code</td>
			  <td>Diastolic BloodPressure Meas</td>
			  <td>8462-4</td>
			  <td>LOINC</td>
			</tr>
			<tr>
			  <td colspan="4">Body Position extension bindings and values</td>
			</tr>
			<tr>
			  <td>Observation.extension(bodyPositionExt) mapping</td>
			  <td>Body position with respect to gravity</td>
			  <td>8361-8</td>
			  <td>LOINC</td>
			</tr>
			<tr>
			  <td>Observation.extension(bodyPositionExt).value</td>
			  <td>Supine body position (finding) </td>
			  <td>40199007</td>
			  <td>SNOMED CT</td>
			</tr>
		</tbody>
	</table>
</div>

<div>
	<h4>2.  Blood Pressure taken with an adult size cuff via left brachial artery</h4>
	<table class="grid">
		<thead>
			<tr>
			  <th width="20%">FHIR path and element binding</th>
			  <th width="40%">Text Description</th>
			  <th width="20%">Code</th>
			  <th width="20%">Terminology</th>
			</tr>
		</thead>
		<tbody>
			<tr>
			  <td>Observation.code</td>
			  <td>Blood Pressure Panel with all children optional</td>
			  <td>85354-9</td>
			  <td>LOINC</td>
			</tr>
			<tr>
			  <td>Observation.component.code</td>
			  <td>Systolic blood pressure</td>
			  <td>8480-6</td>
			  <td>LOINC</td>
			</tr>
			<tr>
			  <td colspan="4">Cuff size value</td>
			</tr>
			<tr>
			  <td>Observation.device.extension(BloodPressureCuffSize).value</td>
			  <td>Blood pressure cuff, adult size large</td>
			  <td>720738005</td>
			  <td>SNOMED CT</td>
			</tr>
			<tr>
			  <td colspan="4">Body Site bindings and value</td>
			</tr>
			<tr>
			  <td>Observation.bodySite</td>
			  <td>Body location qualifier</td>
			  <td>39112-8</td>
			  <td>LOINC</td>
			</tr>
			<tr>
			  <td>bodySite.value</td>
			  <td>Structure of left brachial artery (body structure)</td>
			  <td>723961002</td>
			  <td>SNOMED CT</td>
			</tr>
		</tbody>
	</table>
</div>


#### ***Value sets***

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
			  <td>This value set contains concepts used to result the patient's body position, referencing the SNOMED Code 397155001 Body position (observable entity) and the LOINC term "Body position with respect to gravity" 8361-8. This is used in the BodyPositionExt extension.</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-bpMeasDeviceVS.html">Blood Pressure Device Type value set</a></td>
			  <td>This value set contains concepts used to result the type of device used to measure a body blood pressure, referencing the SNOMED Code 23591000205102 “Blood pressure device type (observable entity)" and the LOINC term “Type of Blood pressure device” 41901-0.  This is used in the observation-deviceCode extension.</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-bpmeasbodylocationprecoord.html">Blood Pressure Measurement Site value set</a></td>
			  <td>This value set contains a constrained list body location values used to result the body location where a blood pressure was measured, referencing the SNOMED Code 2281000205100 “Blood pressure measurement site (observable entity)” and the LOINC term "Blood pressure measurement site", 41904-4.  This is used in the bodySite backbone element.</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-bpMeasMethodVS.html">Blood Pressure Method value set</a></td>
			  <td>This value set contains concepts used to result the method used for a blood pressure measurement, referencing the SNOMED Code 2291000205103 “Blood pressure method (observable entity)” and the LOINC term "Blood pressure method" 8357-6.  This is used in the method backbone element.</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-exertionPhaseVS.html">Exertion Phase value Set</a></td>
			  <td>The purpose of the value set is to document exercise associated with a measurement. Resulting LOINC code 74008-4 "Exercise intensity".  This is used in the ExerciseAssociationExt extension.</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-sleepStatusVS.html">Sleep Status value set</a></td>
			  <td>This value set contains values used to indicate the state of wakefulness during measurement.  This is used in the SleepStatusExt extension.</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-MeasurementProtocolVS.html">Measurement Protocol value set</a></td>
			  <td>This value set is to result the Measurement Protocol extension.</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-MeasSettingVS.html">Measurement Setting value set</a></td>
			  <td>This value set is used to result the Measurement Setting extension.</td>
			</tr>
		</tbody>
	</table>
</div>


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
