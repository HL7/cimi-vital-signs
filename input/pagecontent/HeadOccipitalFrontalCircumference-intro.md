### Scope

The measurement of the distance around an individual's head using the occipital-frontal plane.

#### Use Case

<div>
	<h4>1.	Head circumference measured with tape measure.</h4>
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
			  <td>Head Occipital-frontal circumference</td>
			  <td>9843-4</td>
			  <td>LOINC</td>
			</tr>
			<tr>
			  <td colspan="4"><i>Head circumference measurement device extension bindings</i></td>
			</tr>
			<tr>
			  <td>Observation.extension(measurementDeviceExt).value</td>
			  <td>Measuring tape</td>
			  <td>5179100</td>
			  <td>SNOMED CT Solor extension <br> VSAC</td>
			</tr>
		</tbody>
	</table>
</div>

#### Examples

The following examples are provided to illustrate conformant resource content to this profile.

- [Head Occipital-Frontal Circumference Example](Observation-headCircumference-example.html)

{% include link-list.md %}
