Profile: VitalSignsPanel
Parent: VitalsPan
Id: vital-signs-panel
Title: "Vital Signs Panel"
Description: "A vital signs panel as defined by Logica Health.  It includes Oxygen Saturation via Pulse Oximetry, Oxygen Saturation in Arterial blood, body height, body length, body weight, body temperature, blood pressure panel, heart rate, respiratory rate, head-occcipital/frontal circumference, oxygen saturation via pulse oximetry, and body mass index."
* status MS
* code = LNC#85353-1
* code MS
* code ^short = "Vital signs, weight, height, head circumference, oxygen saturation, and BMI panel"
* subject 1..1 MS
* subject only Reference(USCorePatient)
* effective[x] 1..1 MS
* value[x] 0..0
* dataAbsentReason 0..0
* interpretation from DefinedLimitsvalueset (extensible)
* bodySite 0..0
* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* component 0..0
* hasMember ^slicing.discriminator.type = #profile
* hasMember ^slicing.discriminator.path = "resolve()"
* hasMember ^slicing.rules = #closed
* hasMember ^slicing.ordered = false
* hasMember contains
    OxygenSaturationArterialBloodPulseOx 0..1 and
    BodyWeight 0..1 and
    HeadOccipitalFrontalCircumference 0..1 and
    Height 0..1 and
    BodyLength 0..1 and
    BodyTemperature 0..1 and
    BloodPressurePanel 0..1 and
    HeartRate 0..1 and
    RespiratoryRate 0..1 and
    BodyMassIndex 0..1
* hasMember[OxygenSaturationArterialBloodPulseOx] only Reference(OxygenSaturationArterialBloodPulseOx)
* hasMember[BodyWeight] only Reference(BodyWeight)
* hasMember[HeadOccipitalFrontalCircumference] only Reference(HeadOccipitalFrontalCircumference)
* hasMember[Height] only Reference(Height)
* hasMember[BodyLength] only Reference(BodyLength)
* hasMember[BodyTemperature] only Reference(BodyTemperature)
* hasMember[BloodPressurePanel] only Reference(BloodPressurePanel)
* hasMember[HeartRate] only Reference(HeartRate)
* hasMember[RespiratoryRate] only Reference(ResiratoryRate)
* hasMember[BodyMassIndex] only Reference(BodyMassIndex)