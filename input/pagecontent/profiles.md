---
title: Profiles and Extensions
layout: default
active: profiles
---
### Profiles

The following Profiles and have been defined for this implementation guide.

<div>
	<table class="grid">
		<thead>
			<tr>
			  <th width="25%">Profile</th>
			  <th width="75%">Definition</th>
			</tr>
		</thead>
		<tbody>
			<tr>
			  <td><a href="StructureDefinition-vital-signs-panel.html">Vital Signs Panel</a></td>
			  <td>A vital signs panel as defined by Logica Health.  It includes Oxygen Saturation via Pulse Oximetry, Oxygen Saturation in Arterial blood, body height, body length, body weight, body termperature, blood pressure panel, heart rate, respiratory rate, head-oxipital/frontal circumference, oxygen saturation via pulse oximetry, and body mass index.</td>
			</tr>
			<tr>
			  <td><a href="StructureDefinition-blood-pressure-panel.html">Blood Pressure Panel</a></td>
			  <td>A panel that includes as components Systolic Blood pressure, Diastolic Blood Pressure, and Mean Arterial Pressure</td>
			</tr>
			<tr>
			  <td><a href="StructureDefinition-average-blood-pressure.html">Average Blood Pressure</a></td>
			  <td>A calculated average of two or more blood pressure readings in a specified time period or according to a specified algorithm or protocol.  The average blood pressure has a systolic and a diastolic component.</td>
			</tr>
			<tr>
			  <td><a href="StructureDefinition-twenty-four-hour-blood-pressure.html">24 Hour Blood Pressure</a></td>
			  <td>The calculated blood pressure average of two or more blood pressure readings over a twenty four hour period.</td>
			</tr>
			<tr>
			  <td><a href="StructureDefinition-bp-device.html">Blood Pressure Device</a></td>
			  <td>A profile of teh Device resource used specifically for blood pressure devices and includes an extension for blood pressure cuff size.</td>
			</tr>
			<tr>
			  <td><a href="StructureDefinition-height.html">Body Height</a></td>
			  <td>The measurement in centimeters or feet an inches from the top of the head to the heel, usually while standing.</td>
			</tr>
			<tr>
			  <td><a href="StructureDefinition-body-length.html">Body Length</a></td>
			  <td>The measurement in centimeters or inches from the top of the head to bottom of the heel, taken while lying down.</td>
			</tr>
			<tr>
			  <td><a href="StructureDefinition-body-mass-index.html">Body Mass Index</a></td>
			  <td>A numerical index based on an individual's weight in kilograms divided by the square of their height in meters.</td>
			</tr>
			<tr>
			  <td><a href="StructureDefinition-body-temperature.html">Body Temperature</a></td>
			  <td>The measurement of an individual's body temperature.</td>
			</tr>
			<tr>
			  <td><a href="StructureDefinition-body-weight.html">Body Weight</a></td>
			  <td>The measurement of an individual's weight.</td>
			</tr>
			<tr>
			  <td><a href="StructureDefinition-head-occipital-frontal-circumference.html">Head Occipital Frontal Circumference</a></td>
			  <td>The circumference of the head using the frontal-occipital plane</td>
			</tr>
			<tr>
			  <td><a href="StructureDefinition-heart-rate.html">Heart Rate</a></td>
			  <td>The rate at which the heart is beating in beats per minute</td>
			</tr>
			<tr>
			  <td><a href="StructureDefinition-oxygen-saturation-arterial-blood-pulseOx.html">Oxygen Saturation by Pulse Oximetry</a></td>
			  <td>A measurement of the degree to which oxygen is bound to hemoglobin in arterial blood via pulse oximetry</td>
			</tr>
			<tr>
			  <td><a href="StructureDefinition-oxygen-saturation-arterial-blood.html">Oxygen Saturation Arterial Blood</a></td>
			  <td>A measurement of the degree to which oxygen is bound to hemoglobin in arterial blood.</td>
			</tr>
			<tr>
			  <td><a href="StructureDefinition-respiratory-rate.html">Respiratory Rate</a></td>
			  <td>A measurement of breaths per minute.</td>
			</tr>
		</tbody>
	</table>
</div>


### Extensions

The following extensions have been defined as part of the Vital Signs implementation Guide. A [registry of standard extensions]({{site.data.fhir.path}}extensibility-registry.html) can be found in the FHIR specification and additional extensions may be registered on the HL7 FHIR registry at http://hl7.org/fhir/registry.

#### A note about value bindings in the extensions

Some of the extensions defined below do not have value set bindings included.  This is because the extension may be used in more than one profile and the values needed are specific to the context of the containing profile.  For example the Associated Situation extension is used in both the Body Temperature profile as well as the Body Weight profile.  The values for Associated Situation will differ between these two contexts.  For Body Temperature the values are things like "post exercise" but for Body Weight they're things like "With prosthetic" or "undressed".

<div>
<p>This guide references the following extensions.</p>
<p>
<a href="StructureDefinition-AssociatedSituationExt.html">Associated Situation</a><br/>
<a href="StructureDefinition-bp-cuff-size-ext.html">Blood Pressure Cuff Size</a><br/>
<a href="StructureDefinition-ExerciseAssociationExt.html">Exercise Association</a><br/>
<a href="StructureDefinition-MeasurementProtocolExt.html">Measurement Protocol</a><br/>
<a href="StructureDefinition-MeasurementSettingExt.html">Measurement Setting</a><br/>
<a href="StructureDefinition-SensorDescriptionExt.html">Sensor Description</a><br/>
<a href="StructureDefinition-SleepStatusExt.html">Sleep Status</a><br/>
</p>
</div>

{% include link-list.md %}