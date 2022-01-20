Profile: BloodPressureDevice
Parent: Device
Id: bp-device
Description: "A specialized profile of the Device resource specifically for blood pressure devices"
* extension contains 
    BloodPressureCuffSizeExt named cuffSize 0..*
* extension[cuffSize] ^short = "Cuff Size"
* type from BloodPressureMeasurementDevicevalueset (extensible)