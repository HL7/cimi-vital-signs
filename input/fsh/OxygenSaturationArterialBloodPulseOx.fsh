Profile: OxygenSaturationArterialBloodPulseOx
Parent: USCorePulsOx
Id: oxygen-saturation-arterial-blood-pulseOx
Title: "Oxygen Saturation in Arterial Blood by Pulse Oximetry"
Description: "Oxygen Saturation in Arterial Blood via pulse oximetry."
* extension contains
    SensorDescription named sensorDescription 0..* MS and
    MeasurementSettingExt named MeasurementSetting 0..* MS and
    ExerciseAssociationExt named exerciseAssociation 0..* MS
* extension[sensorDescription] ^short = "Sensor Description"
* extension[MeasurementSetting] ^short = "Measurement setting"
* extension[exerciseAssociation] ^short = "Exercise Association"
* subject 1..1 MS
* subject only Reference(USCorePatient)
* valueQuantity only Quantity
* valueQuantity MS
* valueQuantity.value 1..1 MS
* valueQuantity.unit 1..1 MS
* valueQuantity.system 1..1 MS
* valueQuantity.system only uri
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code 1..1 MS
* valueQuantity.code only code
* valueQuantity.code = UCUM#% (exactly)
* dataAbsentReason MS
* interpretation 0..1
* interpretation only CodeableConcept
* interpretation from NumericResultInterpretationNom (extensible)
* bodySite MS
* bodySite from OxygenSaturationBodyLocationvalueset (extensible)

