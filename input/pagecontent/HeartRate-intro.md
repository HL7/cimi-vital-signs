### Scope

The heart rate profile contains one observation, heart rate. In addition, the heart rate profile contains the following qualifying observations with associated SNOMED CT value sets: Body Position, observation-deviceCode, Exercise Association, SleepStatus, and MeasurementSetting.

*Note*

Many times Heart Rate is measured at the same time as a blood pressure, using a blood pressure device.  Although this profile does not constrain the Observation.device element to the [BPDevice profile](StructureDefinition-bp-device.html) as we did for the blood pressure profiles, it may be used to record the blood pressure device used to obtain the heart rate.  This constraint was not made due to the fact that there are many devices primarily used for other measurements (e.g. blood pressure, oxygen saturation via pulse oximetry) that could also measure a heart rate.  Constraining Observation.device to BPDevice would falsely limit it.

#### Examples

The following examples are provided to illustrate conformant resource content to this profile.

- [Heart Rate Example](Observation-heartRate-example.html)

#### *Use Cases*

<div>
	<h4>1.	Heart rate measured using radial artery palpation.</h4>
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
			  <td>Heart Rate</td>
			  <td>8867-4</td>
			  <td>LOINC</td>
			</tr>
			<tr>
			  <td>Observation.method.value</td>
			  <td>Palpation</td>
			  <td>113011001</td>
			  <td>SNOMED CT</td>
			</tr>
			<tr>
			  <td>Observation.bodySite.value</td>
			  <td>Structure of radial artery (body structure)</td>
			  <td>45631007</td>
			  <td>SNOMED CT</td>
			</tr>
		</tbody>
	</table>
	<br>
	<h4>2.  Heart rate measurement during anesthesia</h4>
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
			  <td>Heart Rate</td>
			  <td>8867-4</td>
			  <td>LOINC</td>
			</tr>
			<tr>
			  <td colspan="4"><i>Associated Situation extension bindings</i></td>
			</tr>
			<tr>
			  <td>Observation.extension(AssociatedSituation).value</td>
			  <td>During procedure</td>
			  <td>307154001</td>
			  <td>SNOMED CT</td>
			</tr>
		</tbody>
	</table>
</div>

#### *Value sets*

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
			  <td><a href="ValueSet-heartRateMeasDeviceVS.html">Heart Rate Device Type value set</a></td>
			  <td>This value set contains concepts used to result the type of device used to measure a heart rate, referencing the LOINC term "Type of Heart rate device" 8887-2.</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-heartRateMeasBodyLocationPrecoordVS.html">Heart Rate Measurement Body Location value set</a></td>
			  <td>This value set contains a constrained list body location values used to result the body location where a heart rate was measured, referencing the LOINC term "Heart rate measurement site", 41904-4.</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-heartRateMeasMethodVS.html">Heart Rate Measurement Method value set</a></td>
			  <td>This value set contains concepts used to result the method used for a blood pressure measurement, referencing the LOINC term "Heart rate method” 8886-4.</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-exertionPhaseVS.html">Exersion Phase value set</a></td>
			  <td>The purpose of the value set is to document exercise associated with a measurement. Resulting LOINC code 74008-4 "Exercise intensity".</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-sleepStatusVS.html">Sleep Status value set</a></td>
			  <td>This value set contains values used to indicate the state of wakefulness during measurement</td>
			</tr>
		</tbody>
	</table>
</div>


{% include link-list.md %}
