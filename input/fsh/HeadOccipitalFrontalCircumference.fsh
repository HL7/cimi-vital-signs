Profile: HeadOccipitalFrontalCircumference
Parent: HeadCirc
Id: head-occipital-frontal-circumference
Title: "Head Occipital-Frontal Circumference"
Description: "Head Occipital/Frontal Circumference by Tape Measure, the measured length around and individual's head via a tape measure."
* status MS
* code 1..1 MS
* code = LNC#8287-5
* code ^short = "Head Occipital-frontal circumference by Tape measure"
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
* valueQuantity.code from LengthUOMVS (required)
* dataAbsentReason MS
* interpretation from NumericResultInterpretationNom (extensible)
