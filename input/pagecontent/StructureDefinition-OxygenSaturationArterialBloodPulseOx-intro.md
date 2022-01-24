### Scope

The Oxygen saturation in Arterial blood via Pulse oximetry profile contains one observation for the relative amount of oxygen in arterial blood as measured by a pulse oximeter,, given in percent.  In addition, the profile contains the following qualifying observations with associated SNOMED CT value sets: Sensordescription, MeasurementSetting, and ExerciseAssociation.

#### Examples

The following examples are provided to illustrate conformant resource content to this profile.

- [Oxygen Saturation in Arterial blood Example](Observation-oxygenSaturationPulseOx-example.html)

#### *Use Cases*

<div>
	<h4>1.	Oxygen saturation measured with pulse oximeter probe.</h4>
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
			  <td>Oxygen saturation in Arterial blood</td>
			  <td>59408-5</td>
			  <td>LOINC</td>
			</tr>
			<tr>
			  <td colspan="4"><i>Sensor Description extension bindings</i></td>
			</tr>
			<tr>
			  <td>Observation.extension(sensorDescriptionExt).value</td>
			  <td>Pulse oximeter (physical object)</td>
			  <td>448703006</td>
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
			  <td><a href="ValueSet-sensorDescriptionVS.html">Oxygen saturation sensor type reference set</a></td>
			  <td>This reference set contains the instrument used when an oxygen saturation is measured in arterial blood by pulse oximetry, referencing the LOINC term "Oxygen Saturation Sensor Type" 73803-9</td>
			</tr> 
			<tr>
			  <td><a href="ValueSet-sPO2BodyLocationVS.html">Oxygen Saturation Body Location value set</a></td>
			  <td>This reference set contains a constrained list body location values used to record the site where an oximeter was placed, and capillary oxygen saturation measured.</td>
			</tr>
			<tr>
				<td><a href="ValueSet-exertionPhaseVS.html">Exertion Phase value set</a></td>
				<td>This value set is used to result the Exercise Association extension.</td>
			</tr>
		</tbody>
	</table>
</div>

{% include link-list.md %}