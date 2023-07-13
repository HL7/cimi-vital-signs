Profile: Height
Parent: CoreHeight
Id: height
Title: "Body Height"
Description: "The measurement in centimeters or feet and inches from the top of the head to the heel, usually while standing."
* extension contains
    ExtBodyPosition named bodyPosition 0..1 MS and
    ExtDeviceCode named measurementDevice 0..1 MS and
    MeasurementSettingExt named MeasurementSetting 0..1 MS
* extension[bodyPosition] ^short = "Body Position"
* extension[bodyPosition].valueCodeableConcept from HeightBodyPositionvalueset (extensible)
* extension[measurementDevice].value[x] only CodeableConcept
* extension[measurementDevice].valueCodeableConcept from HeightLengthMeasurementDevicevalueset (extensible)
* extension[measurementDevice] ^short = "Measurement Device Type"
* extension[MeasurementSetting] ^short = "Measurement setting"
* status MS
* code ^short = "Body height"
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
* valueQuantity.code from LengthUOMVS (required)
* dataAbsentReason MS
* interpretation from NumericResultInterpretationNonPanic (extensible)
* method MS
* method from HeightLengthMeasurementMethodvalueset (extensible)
