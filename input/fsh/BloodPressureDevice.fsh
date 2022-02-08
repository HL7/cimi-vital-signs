Profile: BloodPressureDevice
Parent: Device
Id: bp-device
Title: "Blood Pressure Device"
Description: "A profile of the Device resource used specifically for blood pressure devices and includes an extension for blood pressure cuff size."
* extension contains 
    BloodPressureCuffSizeExt named cuffSize 0..*
* extension[cuffSize] ^short = "Cuff Size"
* type from BloodPressureMeasurementDevicevalueset (extensible)