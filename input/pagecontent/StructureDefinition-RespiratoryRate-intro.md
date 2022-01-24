### Scope

The respiratory rate profile contains one observation, respiratory rate. In addition, the respiratory rate profile contains the following qualifying observations with associated SNOMED CT value sets: observatino-deviceCode, BodyPosition, ExerciseAssociation, and MeasurementSetting.

#### Examples

The following examples are provided to illustrate conformant resource content to this profile.

- [Respiratory Rate Example](Observation-respiratoryRate-example.html)

#### *Use Cases*

<div>
	<h4>1.	Respiratory rate taken with patient sleeping in a supine position.</h4>
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
			  <td>Respiratory Rate</td>
			  <td>9279-1</td>
			  <td>LOINC</td>
			</tr>
			<tr>
			  <td colspan="4"><i>Body Position extension bindings</i></td>
			</tr>
			<tr>
			  <td>Observation.extension(bodyPositionExt) mapping</td>
			  <td>Body position with respect to gravity</td>
			  <td>8361-8</td>
			  <td>LOINC</td>
			</tr>
			<tr>
			  <td rowspan="2">Observation.extension(bodyPositionExt) value sets</td>
			  <td>Body position value set (foundation metadata concept)</td>
			  <td>81000205109</td>
			  <td>SNOMED CT Solor extension</td>
			</tr>
			<tr>
			  <td>Body Position value set</td>
			  <td>2.16.840.1.113762.1.4.1181.38</td>
			  <td>VSAC</td>
			</tr>
			<tr>
			  <td>Observation.extension(bodyPositionExt).value</td>
			  <td>Supine body position (finding)</td>
			  <td>40199007</td>
			  <td>SNOMED CT</td>
			</tr>
			<tr>
			  <td colspan="4"><i>Sleep Status extension bindings</i></td>
			</tr>
			<tr>
			  <td>Observation.extension(sleepStatusExt) mapping</td>
			  <td>Sleep Status</td>
			  <td><i>need to request LOINC code</i></td>
			  <td>LOINC</td>
			</tr>
			<tr>
			  <td>Observation.extension(sleepStatusExt) value sets</td>
			  <td>Sleep Status Refset</td>
			  <td>24011000205104</td>
			  <td>SNOMED CT Solor extension</td>
			</tr>
			<tr>
			  <td>Observation.extension(sleepStatusExt).value</td>
			  <td>Asleep (finding)</td>
			  <td>248220008</td>
			  <td>SNOMED CT</td>
			</tr>
		</tbody>
	</table>
	<br>
	<h4>2.  Respiratory Rate taken during exercise.</h4>
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
			  <td>Respiratory Rate</td>
			  <td>9279-1</td>
			  <td>LOINC</td>
			</tr>
			<tr>
			  <td colspan="4"><i>Exercise Association extension bindings</i></td>
			</tr>
			<tr>
			  <td>Observation.extension(exerciseAssociationExt) mapping</td>
			  <td>Exercise Association</td>
			  <td>8361-8</td>
			  <td>LOINC</td>
			</tr>
			<tr>
			  <td>Observation.extension(exerciseAssociationExt).value</td>
			  <td>During exercise (qualifier value)</td>
			  <td>309604004</td>
			  <td>SNOMED CT</td>
			</tr>
		</tbody>
	</table>
</div>

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
			  <td><a href="ValueSet-respiratoryRateMeasDeviceVS.html">Respiratory Rate Measurement Device value set</a></td>
			  <td>This value set contains concepts used to result the type of device used to measure a heart rate, referencing the LOINC term "Type of Breath rate device" 9277-5.</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-respiratoryRateMeasMethodVS.html">Respiratory Rate Measurement Method</a></td>
			  <td>This value set contains concepts used to result the method used for a respiratory   rate measurement, referencing the LOINC term "Breath rate method” 9275-9.</td>
			</tr>
			<tr>
				<td><a href="ValueSet-exertionPhaseVS.html">Exertion Phase value set</a></td>
				<td>This values set is used to result the Exercise Association extension.</td>
			</tr>
			<tr>
				<td><a href="ValueSet-MeasSettingVS.html">Measurement Setting value set</a></td>
				<td>This value set is used to result the Measurement Setting extension.</td>
			</tr>
			<tr>
				<td><a href="ValueSet-NumericResultIntVS.html">Abnormal Interpretation Numeric Nominal value set</a></td>
				<td>This value set is used to result the interpretation backbone element.</td>
			</tr>
		</tbody>
	</table>
</div>

{% include link-list.md %}
