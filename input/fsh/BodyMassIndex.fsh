Profile: BodyMassIndex
Parent: BMI 
Id: body-mass-index
Title: "Body Mass Index"
Description: "A numerical index based on an individual's weight in kilograms divided by the square of their height in meters."
* extension contains 
    MeasurementSettingExt named MeasurementSetting 0..1 MS
* extension[MeasurementSetting] ^short = "Measurement setting"
* status MS
* subject 1..1 MS
* subject only Reference(USCorePatient)
* effective[x] 1..1 MS
* value[x] only Quantity
* valueQuantity MS
* valueQuantity.value 1..1 MS
* valueQuantity.unit 1..1 MS
* valueQuantity.system 1..1 MS
* valueQuantity.system only uri
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code 1..1 MS
* valueQuantity.code only code
* valueQuantity.code = UCUM#kg/m2 (exactly)
* dataAbsentReason MS
* interpretation from NumericResultInterpretationNonPanic (extensible)
