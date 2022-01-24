Profile: BodyWeight
Parent: CoreBodyWeight
Id: body-weight
Title: "Body Weight"
Description: "Body Weight, the measured mass of an individual's body."
* extension contains
    ExtDeviceCode named measurmentDevice 0..1 MS and
    AssociatedSituationExt named associatedSituation 0..* MS and
    MeasurementSettingExt named measurementSetting 0..* MS
* extension[measurmentDevice].value[x] only CodeableConcept
* extension[measurmentDevice].valueCodeableConcept from WeightMeasurementDevice (extensible)
* extension[measurmentDevice] ^short = "Measurement Device Type"
* extension[associatedSituation].value[x] only CodeableConcept
* extension[associatedSituation].valueCodeableConcept  from AssociatedSituationvalueset (extensible)
* extension[associatedSituation] ^short = "Associated Situation"
* extension[measurementSetting].value[x] only CodeableConcept
* extension[measurementSetting].valueCodeableConcept from MeasurementSettingVS (extensible)
* extension[measurementSetting] ^short = "Measurement setting"
* status MS
* code ^short = "Body weight"
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
* valueQuantity.code from WeightUOMVS (required)
* dataAbsentReason MS
* interpretation from NumericResultInterpretationNom (extensible)
