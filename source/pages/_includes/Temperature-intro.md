The temperature profile contains one observation, temperature. In addition, the temperature profile contains the following qualifying observations with associated SNOMED CT value sets: Body Position; Temperature Measurement Device (); Temperature Measurement Method (e.g. auscultation, doppler); Exercise Association; and Sleep status.

### Value Sets

|    Value Set                                                  |    Purpose                                                                                                                                                                                                                                                                                                         |
|---------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|    Body Temperature Device Type   Refset                      |    This reference set   contains concepts used to result the type of device used to measure a body   temperature, referencing the LOINC term "Type of Body temperature   device" 8326-1.                                                                                                                           |
|    Body Temperature Measurement   Method and Device Refset    |    Body temperature is taken, and the   user records measurement method or instrument used to evaluate the   temperature. It combines method and device values because they often overlap   in EHR documentation systems.                                                                                          |
|    Body Temperature Measurement Site   Refset                 |    This reference set a constrained list body location values used to   result the body location where a body temperature was measured, referencing   the SNOMED Code 1520000000000 "Body temperature measurement site (observable   entity)" and the LOINC term "Body temperature measurement   site", 8327-9.    |
|    Exercise Association Reference Set                         |    The purpose of the reference set   is to document exercise associated with a measurement. Resulting   LOINC code 74008-4 "Exercise intensity".                                                                                                                                                                  |

### Use Cases
|    Use Cases                               |    Elements Used                   |    Values          |
|--------------------------------------------|------------------------------------|--------------------|
|    Heart   rate taken with an oximeter.    |    Heart   Rate   Device   Type    |        Oximeter    |

### Examples
- [Body Temperature Example](BodyTemperatureExample.html)

{% include link-list.md %}