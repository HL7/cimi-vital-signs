### Scope and Usage

The Body Height profile contains one observation, body height. In addition, the profile contains the following qualifying observations with associated SNOMED CT value sets: Body Position, observation-deviceCode, ClothingWornDuringMeasure, and MeasurementSetting.

#### Examples

The following examples are provided to illustrate conformant resource content to this profile.

- [Body Height Example](Observation-height-example.html)

#### *Use Case*

<div>
	<h4>1.	Height measured using tape measure.</h4>
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
			  <td>Body Height</td>
			  <td>8302-2</td>
			  <td>LOINC</td>
			</tr>
			<tr>
			  <td colspan="4"><i>Body height measurement device extension bindings</i></td>
			</tr>
			<tr>
			  <td>Observation.extension(measurementDeviceExt).value</td>
			  <td>Measuring tape</td>
			  <td>5179100</td>
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
			  <td><a href="ValueSet-heightLengthMeasDeviceVS.html">Body Height Measurement Device value set</a></td>
			  <td>This value set is used to result LOINC code 41910-1 "Type of Height device"</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-bodyPositionVS.html">Body Position value set</a></td>
			  <td>This value set contains concepts used to result the patient's body position, referencing the SNOMED Code 397155001 Body position (observable entity) and the LOINC term "Body position with respect to gravity" 8361-8.</td>
			</tr>
		</tbody>
	</table>
</div>


{% include link-list.md %}
