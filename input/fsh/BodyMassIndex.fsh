Profile: BodyMassIndex
Parent: BMI 
Id: body-mass-index
Description: "Body Mass Index, the measurement of body fat based on an individual's height and weight and given as a ration of kilograms per square meter."
* extension contains 
    MeasurementSettingExt named MeasurementSetting 0..* MS
* extension[MeasurementSetting] ^short = "Measurement setting"
* status MS
* subject 1..1 MS
* subject only Reference(USCorePatient)
* effective[x] 1..1 MS
* valueQuantity only Quantity
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
* interpretation from NumericResultInterpretationNom (extensible)
