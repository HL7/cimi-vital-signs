Profile: AverageBloodPressure
Parent: VitalSigns
Id: average-blood-pressure
Title: "Average Blood Pressure"
Description: "The average of a set of blood pressure measurements. The number of measurements and time period in which they are taken are determined by the institution or protocol."
* extension contains
    ExtBodyPosition named BodyPosition 0..1 MS and
    ExerciseAssociationExt named exerciseAssociation 0..* MS and
    MeasurementSettingExt named MeasurementSetting 0..* MS and
    MeasurementProtocol named MeasurementProtocol 0..* MS
* extension[BodyPosition] ^short = "Body Position"
* extension[exerciseAssociation] ^short = "Exercise Association"
* extension[MeasurementSetting] ^short = "Measurement setting"
* extension[MeasurementProtocol] ^short = "Rules and algorithm for Average Blood Pressure calculation."
* status MS
* code = LNC#96607-7
* code ^short = "Blood pressure panel unspecified time mean"
* subject 1..1 MS
* subject only Reference(USCorePatient)
* effective[x] 1..1 MS
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
    SystolicBP 1..1 and
    DiastolicBP 0..1
* component[SystolicBP] ^short = "Systolic Blood Pressure"
* component[SystolicBP].code = LNC#96608-5
* component[SystolicBP].code MS
* component[SystolicBP].code ^short = "Systolic blood pressure unspecified time mean"
* component[SystolicBP].valueQuantity only Quantity
* component[SystolicBP].valueQuantity MS
* component[SystolicBP].valueQuantity.value 1..1 MS
* component[SystolicBP].valueQuantity.unit 1..1 MS
* component[SystolicBP].valueQuantity.system 1..1 MS
* component[SystolicBP].valueQuantity.system only uri
* component[SystolicBP].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[SystolicBP].valueQuantity.code 1..1 MS
* component[SystolicBP].valueQuantity.code only code
* component[SystolicBP].valueQuantity.code = #mm[Hg] (exactly)
* component[DiastolicBP] ^short = "Diastolic Blood Pressure"
* component[DiastolicBP].code = LNC#96609-3
* component[DiastolicBP].code MS
* component[DiastolicBP].code ^short = "Diastolic blood pressure unspecified time mean"
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
