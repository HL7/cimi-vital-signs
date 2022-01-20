Profile: TwentyFourHourBloodPressure
Parent: VitalSigns
Id: twenty-four-hour-blood-pressure
Title: "Twenty Four Hour Blood Pressure"
Description: "An average blood pressure (systolic and diastolic) over a twenty four hour period."
* extension contains
    ExtBodyPosition named BodyPosition 0..1 MS and
    ExerciseAssociationExt named exerciseAssociation 0..* MS and
    MeasurementSettingExt named MeasurementSetting 0..* MS
* extension[BodyPosition] ^short = "Body Position"
* extension[BodyPosition].valueCodeableConcept from BodyPositionvalueset (extensible)
* extension[exerciseAssociation] ^short = "Exercise Association"
* extension[MeasurementSetting] ^short = "Measurement setting"
* status MS
* code = SCT#314463006
* code ^short = "24 hour blood pressure (observable entity)"
* subject 1..1 MS
* subject only Reference(USCorePatient)
* effective[x] 1..1 MS
* effective[x] only Period
* effective[x] ^short = "The dates and times over which the 24 hour period falls."
* value[x] 0..0
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
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component ^short = "Blood pressure components"
* component contains
    SystolicBP24HMean 1..1 and
    DiastolicBP24HMean 0..1
* component[SystolicBP24HMean] ^short = "Systolic blood pressure 24 hour mean"
* component[SystolicBP24HMean].code = LNC#8490-5
* component[SystolicBP24HMean].code MS
* component[SystolicBP24HMean].code ^short = "Systolic blood pressure 24 hour mean"
* component[SystolicBP24HMean].valueQuantity only Quantity
* component[SystolicBP24HMean].valueQuantity MS
* component[SystolicBP24HMean].valueQuantity.value 1..1 MS
* component[SystolicBP24HMean].valueQuantity.unit 1..1 MS
* component[SystolicBP24HMean].valueQuantity.system 1..1 MS
* component[SystolicBP24HMean].valueQuantity.system only uri
* component[SystolicBP24HMean].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[SystolicBP24HMean].valueQuantity.code 1..1 MS
* component[SystolicBP24HMean].valueQuantity.code only code
* component[SystolicBP24HMean].valueQuantity.code = #mm[Hg] (exactly)
* component[DiastolicBP24HMean] ^short = "Diastolic blood pressure 24 hour mean"
* component[DiastolicBP24HMean].code = LNC#8472-3
* component[DiastolicBP24HMean].code MS
* component[DiastolicBP24HMean].code ^short = "Diastolic blood pressure 24 hour mean"
* component[DiastolicBP24HMean].valueQuantity only Quantity
* component[DiastolicBP24HMean].valueQuantity MS
* component[DiastolicBP24HMean].valueQuantity.value 1..1 MS
* component[DiastolicBP24HMean].valueQuantity.unit 1..1 MS
* component[DiastolicBP24HMean].valueQuantity.system 1..1 MS
* component[DiastolicBP24HMean].valueQuantity.system only uri
* component[DiastolicBP24HMean].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[DiastolicBP24HMean].valueQuantity.code 1..1 MS
* component[DiastolicBP24HMean].valueQuantity.code only code
* component[DiastolicBP24HMean].valueQuantity.code = #mm[Hg] (exactly)
