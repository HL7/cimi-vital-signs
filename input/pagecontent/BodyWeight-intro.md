### Scope

The Body Weight profile contains one observation, body weight. In addition, the profile contains the following qualifying observations with associated SNOMED CT value sets: observation-deviceCode, AssociatedSituation, MeasurmentSetting.

#### Examples

The following examples are provided to illustrate conformant resource content to this profile.

- [Body Weight Example](Observation-bodyWeight-example.html)

#### *Use Case*

<div>
	<h4>1.	Weight measured with patient fully clothed and wearing shoes.</h4>
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
			  <td>Body Weight</td>
			  <td>29463-7</td>
			  <td>LOINC</td>
			</tr>
			<tr>
			  <td colspan="4">Observation.extension(clothingWornDuringMeasureExt)</td>
			</tr>
			<tr>
			  <td>Observation.extension(clothingWornDuringMeasureExt).value</td>
			  <td>Wearing street clothes with shoes (finding)</td>
			  <td>971000205103</td>
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
			  <td><a href="ValueSet-weightMeasurementDeviceVS.html">Weight Measurement Device value set</a></td>
			  <td>This value set contains concepts used to result the type of instrument used to measure a body weight, referencing the LOINC term "XXX" (need LOINC).</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-AssociatedSituationVS.html">Associated Situation value set</a></td>
			  <td>This value set contains concepts used to result the amount of clothing worn during the measure, referencing the SNOMED Code 248159006 "State of dress (observable entity)" and the LOINC term "Clothing worn during measure” 8352-7.</td>
			</tr>
		</tbody>
	</table>
</div>

{% include link-list.md %}
