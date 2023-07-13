Profile: BodyLength
Parent: VitalSigns
Id: body-length
Title: "Body Length"
Description: "The measurement in centimeters or inches from the top of the head to bottom of the heel, taken while lying down."
* extension contains
    ExtDeviceCode named measurementDevice 0..1 MS and
    MeasurementSettingExt named MeasurementSetting 0..1 MS
* extension[measurementDevice].value[x] only CodeableConcept
* extension[measurementDevice].valueCodeableConcept from HeightLengthMeasurementDevicevalueset (extensible)
* extension[measurementDevice] ^short = "Measurement Device Type"
* extension[MeasurementSetting] ^short = "Measurement setting"
* status MS
* code = LNC#8306-3
* code ^short = "Body height --lying"
* subject 1..1 MS
* subject only Reference(Patient)
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
* valueQuantity.code from LengthUOMVS (extensible)
* dataAbsentReason MS
* interpretation from NumericResultInterpretationNonPanic (extensible)
* method from HeightLengthMeasurementMethodvalueset (extensible)