Profile: BloodPressurePanel
Parent: VitalSigns
Id: blood-pressure-panel
Title: "Blood Pressure Panel"
Description: "Blood Pressure Panel; a grouping of systolic, diastolic, and mean arterial blood pressure components."
* extension contains
    ExtBodyPosition named bodyPosition 0..1 MS and
    SleepStatus named sleepStatus 0..1 MS and
    ExerciseAssociationExt named exerciseAssociation 0..1 MS and
    MeasurementSettingExt named MeasurementSetting 0..1 MS
* extension[bodyPosition] ^short = "Body Position"
* extension[bodyPosition].valueCodeableConcept from BodyPositionvalueset (extensible)
* extension[sleepStatus] ^short = "Sleep Status"
* extension[exerciseAssociation] ^short = "Exercise Association"
* extension[MeasurementSetting] ^short = "Measurement setting"
* status MS
* code = LNC#85354-9
* code ^short = "Blood pressure panel with all children optional"
* subject 1..1 MS
* subject only Reference(USCorePatient)
* effective[x] 1..1 MS
* value[x] 0..0
* interpretation 0..1
* interpretation only CodeableConcept
* interpretation from NumericResultInterpretationNom (extensible)
* bodySite MS
* bodySite from BloodPressureMeasurementBodyLocationPrecoodinated (extensible)
* bodySite ^binding.description = "A set of codes that describe where on/in the body an observation or procedure took place"
* method MS
* method from BloodPressureMeasurementMethodvalueset (extensible)
* method ^binding.description = "A set of codes that describe the method used to measure a blood pressure"
* specimen 0..0
* device 0..1 MS
* device only Reference(BloodPressureDevice)
* device ^short = "Blood Pressure Device"
* component MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component ^short = "Blood pressure components"
* component contains
    SystolicBP 1..1 and
    DiastolicBP 0..1 and
    MeanArterialBP 0..1 MS
* component[SystolicBP] ^short = "Systolic Blood Pressure"
* component[SystolicBP].code = LNC#8480-6
* component[SystolicBP].code MS
* component[SystolicBP].code ^short = "Systolic blood pressure"
* component[SystolicBP].valueQuantity only Quantity
* component[SystolicBP].valueQuantity MS
* component[SystolicBP].valueQuantity.value 1..1 MS
* component[SystolicBP].valueQuantity.unit 1..1 MS
* component[SystolicBP].valueQuantity.system 1..1 MS
* component[SystolicBP].valueQuantity.system only uri
* component[SystolicBP].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[SystolicBP].valueQuantity.code 1..1 MS
* component[SystolicBP].valueQuantity.code only code
* component[SystolicBP].valueQuantity.code = UCUM#mm[Hg] (exactly)
* component[DiastolicBP] ^short = "Diastolic Blood Pressure"
* component[DiastolicBP].code = LNC#8462-4
* component[DiastolicBP].code MS
* component[DiastolicBP].code ^short = "Diastolic blood pressure"
* component[DiastolicBP].valueQuantity only Quantity
* component[DiastolicBP].valueQuantity MS
* component[DiastolicBP].valueQuantity.value 1..1 MS
* component[DiastolicBP].valueQuantity.unit 1..1 MS
* component[DiastolicBP].valueQuantity.system 1..1 MS
* component[DiastolicBP].valueQuantity.system only uri
* component[DiastolicBP].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[DiastolicBP].valueQuantity.code 1..1 MS
* component[DiastolicBP].valueQuantity.code only code
* component[DiastolicBP].valueQuantity.code = UCUM#mm[Hg] (exactly)
* component[MeanArterialBP] ^short = "Mean Arterial Blood Pressure"
* component[MeanArterialBP].code = LNC#8478-0
* component[MeanArterialBP].code MS
* component[MeanArterialBP].code ^short = "Mean blood pressure"
* component[MeanArterialBP].valueQuantity only Quantity
* component[MeanArterialBP].valueQuantity MS
* component[MeanArterialBP].valueQuantity.value 1..1 MS
* component[MeanArterialBP].valueQuantity.unit 1..1 MS
* component[MeanArterialBP].valueQuantity.system 1..1 MS
* component[MeanArterialBP].valueQuantity.system only uri
* component[MeanArterialBP].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[MeanArterialBP].valueQuantity.code 1..1 MS
* component[MeanArterialBP].valueQuantity.code only code
* component[MeanArterialBP].valueQuantity.code = UCUM#mm[Hg] (exactly)

