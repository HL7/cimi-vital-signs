Profile: HeadOccipitalFrontalCircumference
Parent: VitalSigns
Id: head-occipital-frontal-circumference
Title: "Head Occipital-Frontal Circumference by Tape Measure"
Description: "The measured length around and individual's head via a tape measure using the frontal-occipital plane."
* status MS
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
* interpretation from NumericResultInterpretationNonPanic (extensible)
* method 0..0
