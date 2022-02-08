### Scope

The Body Temperature profile contains one observation, temperature. In addition, this profile contains the following qualifying observations with associated SNOMED CT value sets: observation-deviceCode and MeasurementSetting.

#### Examples

The following examples are provided to illustrate conformant resource content to this profile.

- [Body Temperature Example](Observation-bodyTemperature-example.html)

#### *Use Cases*

<div>
	<h4>1.	Rectal temperature.</h4>
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
			  <td>Temperature</td>
			  <td>8310-5</td>
			  <td>LOINC</td>
			</tr>
			<tr>
			  <td>Observation.bodySite.value</td>
			  <td>Rectum structure (body structure)</td>
			  <td>34402009</td>
			  <td>SNOMED CT</td>
			</tr>
		</tbody>
	</table>
</div>

#### *Value sets:*

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
			  <td><a href="ValueSet-bodyTempMeasurementDeviceVS.html">Body Temperature Measurement Device value set</a></td>
			  <td>Body temperature is taken, and the user records measurement method or instrument used to evaluate the temperature. It combines method and device values because they often overlap in EHR documentation systems.</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-bodyTempMeasBodyLocationPrecoordVS.html">Body Temperature Measurement Body Location value set</a></td>
			  <td>SELECT SNOMED CT code system values that describe where on the body the temperature was measured.</td>
			</tr> 
		</tbody>
	</table>
</div>

{% include link-list.md %}
