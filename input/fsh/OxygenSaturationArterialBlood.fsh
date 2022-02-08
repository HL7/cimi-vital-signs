Profile: OxygenSaturationArterialBlood
Parent: O2Sat
Id: oxygen-saturation-arterial-blood
Title: "Oxygen Saturation in Arterial blood, method not specified"
Description: "A measurement of the percentage to which oxygen is bound to hemoglobin in arterial blood."
* status MS
* code ^short = "Oxygen saturation in Arterial blood"
* subject 1..1 MS
* subject only Reference(USCorePatient)
* interpretation 0..1 MS
* interpretation only CodeableConcept
* interpretation from LowOnlyNumericResultInterpretationNom (extensible)
* value[x] only Quantity