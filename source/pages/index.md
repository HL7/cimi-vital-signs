---
title: Vital Signs Implementation Guide Home
layout: default
active: index
---
 
<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->
Table of Contents
* Do not remove this line (it will not be displayed)
{:toc}

---

<!-- end TOC -->

### Introduction

Vital signs are physical observations that are an indication of the body's life-sustaining functions  They are taken to assess general physical health, give clues to possible disease states, or to show progress toward recovery.  There is a need for a single structure and standard vocabulary bindings for each vital sign to allow for ubiquitous access and re-use of vital signs observations. Particularly with the use of wearables by patients where they want to or need to share information from those devices. To meet this need there must be a consistent vocabulary and a common syntax to achieve semantic interoperability. The purpose of the FHIR Vital Signs profiles in this implementation guide is to provide a mechanism to record, search, and retrieve the vital signs associated with a patient that include the primary vital signs (heart rate, respiratory rate, body temperature, and blood pressure), and additional measurements such as body height/length, weight, head circumference, oxygen saturation, and BMI, and the qualifying observations needed for each measurement such as body position, laterality, cuff size and location, device type, etc.. When a FHIR implementation supports any of the vital signs listed in the table below, the implementation SHALL conform to the profiles in this IG for vital signs observations.

The profiles in this implementation guide (IG) are derived from and extend the vital signs profiles from the [FHIR Specification](http://hl7.org/fhir/R4/observation-vitalsigns.html) which are used by [US Core](http://hl7.org/fhir/us/core/index.html).  Exceptions to this are Head Occipital-frontal circumference by Tape measure, Average Blood Pressure, and 24-Hour Blood Pressure.  This IG uses Head Occipital-frontal circumference by Tape measure because that is the observation defined in the LOINC panel *Vital signs, weight, height, head circumference, oxygen saturation and BMI panel* [85353-1](http://r.details.loinc.org/LOINC/85353-1.html?sections=Comprehensive).  Average Blood Pressure and 24-Hour Blood Pressure are included for implementations that may need them as additional blood pressure observations.

The Office of the National Coordinator (ONC) sponsored [Data Access Framework (DAF)](https://www.healthit.gov/topic/scientific-initiatives/pcor/data-access-framework-daf) project, originally developed, balloted, and published in FHIR DSTU2 and the [Argonaut](http://argonautwiki.hl7.org/index.php?title=Main_Page) pilot implementation
project and were used as references in the creation of the profiles in this IG. 

The profiles were extended by the [Clinical Information Modeling Initiative](https://confluence.hl7.org/display/CIMI/Clinical+Information+Modeling+Initiative) in Jan. 2020 to include associated qualifying observations and required terminology bindings. The work was informed by Intermountain Healthcare’s clinical element models, the Federal Health Information Model, and the American Medical Association’s home blood pressure monitoring use cases.

### Scope

#### Realm

Currently this IG falls within the US realm.

#### Must Support

All elements flagged as *"must support"* within profiles in this implementation guide must abide the following rules:

* The system must be able to store and retrieve the element.
* The system must display the element to the user.
* The system must allow the user to capture the element.
* The element must appear in an output report if present.

#### Mandatory Data Elements and Terminology

The following data elements are mandatory (i.e. data SHALL be present). Profile-specific guidance and valid examples are provided on the specific profile pages. 

##### Each Observation must have:

1. a status (Observation.status)
2. a category code of 'vital-signs' (Observation.category)
3. an observation code (Observation.code) that defines what is being measured.
    * LOINC was the system chosen for the observation code because this aligns with the most countries, but it can be treated as simply a fixed core set of common codes to communicate basic vital signs. Implementers that need to use a different code system should map to LOINC accordingly.
4. a patient (Observation.subject)
5. a time (Observation.effective, a dateTime with at least Year, Month, Day, Hour, and minutes. Seconds may be zero filled) or time period (start dateTime and end dateTime) indicating when the measurement was taken or over which period it was taken.

##### Rules for the observation value:

1. Each vital sign measurement shall have a numeric result value and standard Unified Code for Units of Measure (UCUM) code.
    * Observations with numeric values **must not have** a Data Absent Reason. Observations *without* a numeric value **must have** a valid Data Absent Reason.

#### Data Provenance

It is recommended that the guidelines set forth by the [US Core implementation guide](https://build.fhir.org/ig/HL7/US-Core-R4/basic-provenance.html) for data provenance be followed for implementation of this IG.

### Formal View of Profile Content

Link to the formal definition views for the vital signs listed in this table.

• The table below represents an expansion of the US Core/FHIR Core [Vital Signs](http://build.fhir.org/observation-vitalsigns.html) requirements, their required codes, and UCUM units of measure codes used for representing vital signs observations. Any system supporting any of these vital signs concepts must represent them using *at least* these codes.

• The first column of this table links to the formal views of the individual profile for each vital sign.

• If a more specific code or another code system is recorded or required, implementers must support both the values (LOINC) listed and the translated code - e.g. method specific LOINC codes, SNOMED CT concepts, system specific (local) codes.

• In addition, the implementer may choose to provide alternate codes in addition to the standard codes defined here. The examples illustrate using other codes as translations.

{% include profileloinctable.html %}

### Acknowledgements

**This Implementation Guide was made possible by the thoughtful contributions of the following people:**

*The [American Medical Association (AMA)](www.ama-assn.org)*

*The [HL7 CIMI Work Group](https://confluence.hl7.org/display/CIMI/Clinical+Information+Modeling+Initiative)*

*The [HL7 Orders and Observations Work Group](https://confluence.hl7.org/display/OO/Orders+and+Observations)*

* *Monique Van Berkum, AMA*
* *Corey Smith, AMA*
* *Nathan Davis, Intermountain Healthcare*
* *Susan Matney, Intermountain Healthcare*
* *Patrick Langford, Intermountain Healthcare*

{% include link-list.md %}
