---
title: Use Case - Originate then Amend
layout: default
active: guidance
topofpage: true
r4: http://hl7.org/fhir/R4/
us_r4: http://hl7.org/fhir/us/core/
---

{:.no_toc}

<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->

* Do not remove this line (it will not be displayed)
{:toc}

##  Introduction

### Wound Assessment Template (WAT) Scenario - Use Case - Originate and Retain (null), then Amend (populate with clinical content).

Demonstrate how an EHR actor incorporates the [FHIR Record Lifecycle Event (RLE) Implementation Guide (IG)](http://hl7.org/fhir/R4/ehrsrle/ehrsrle.html) processing of the Originate/Retain and Amend Record Content events when first recording the Wound Assessement Template data.

The focus of this use case is the verification and validation of recording and storage of the FHIR Record Lifecycle Event data represented by the FHIR Resource Types of [AuditEvent](http://hl7.org/fhir/R4/ehrsrle/ehrsrle-auditevent.html) and [US Core Provenance (R4)].

* This represents the first trial definition of incorporating the RLE Originate and Retain event and RLE Amend event into the the WAT data creation. This is the simplest way for the local system to demonstrate that the "populate with clinical content" step began from an "all null clinical content" state. This also establishes that the null-state template may pre-exist on the local system for any interval (seconds to years) prior to its "Amend" to add an instance of assessment.
* For future work, we may identify the complexity of demonstrating that the null-state version could be empty also of patient demographics, thus the null state could be used as the initial state for all subsequent patient-specific captures as Amend events to the all-null original.

<p>&nbsp;</p>

## Actors

The following actor and FHIR RLE events are part of this Use Case:

* **EHR - Example: Primary Care Physician (PCP)**
  * _FHIR RLE Events (internal)_:
    * Originate/Retain Record Entry
    * Evidence of Originate/Retain Record Entry
    * Amend Record Entry Content
    * Evidence of Record Entry Ammendment Event

<p>&nbsp;</p>

## Summary Workflow

This use case defines the FHIR Record Lifecycle Event processes performed by an EHR actor when first recording the Wound Assessment Template data for a given Patient encounter. The workflow is outlined in the following figure. Please note that although there are two separate workflows represented, both are executed in support of the first recording of the Wound Assessment Template data.

{% include img-default.html img="UseCase_Originate.jpg" caption="Use Case Originate and Amend" %}

<p>&nbsp;</p>

## Expected Behavior

The following is the expected behavior of the EHR actor system when implementing the _FHIR RLE Events_ when first recording the Wound Assessment Template data:

**_1. Originate/Retain Record Entry_**
The creation of the the Wound Assessment Template (WAT) data as _empty_ FHIR resource instances of
* The [WoundAssert Condition (R4)] profiled **Condition**
* The [WoundRelatedObservationsPanel Observation (R4)] profiled **Observation**
  * The various Wound profiled related **Observations**
* <div id="publish-box">Clarification - the <i>empty</i> WAT FHIR resource are expected to be minimally populated where only mandatory/required elements are assigned with known or default values. Please see the example resources in the section <i>1. Originate/Retain Record Entry</i> below.</div>

**_2. Evidence of Originate/Retain Record Entry_**
The creation of the corresponding FHIR RLE [AuditEvent](http://hl7.org/fhir/R4/ehrsrle/ehrsrle-auditevent.html) and [US Core Provenance (R4)] resources related to #1.

**_3. Amend Record Entry Content_**
The update of the initial data contents in the Wound Assessment Template data FHIR resource instances created in #1 of
* The [WoundAssert Condition (R4)] profiled **Condition**
* The [WoundRelatedObservationsPanel Observation (R4)] profiled **Observation**
  * The various Wound profiled related **Observations**

**_4. Evidence of Record Entry Ammendment Event_**
The creation of the corresponding FHIR RLE [AuditEvent](http://hl7.org/fhir/R4/ehrsrle/ehrsrle-auditevent.html) and [US Core Provenance (R4)] resources related to #3.

<p>&nbsp;</p>

### WAT Data Storage
The expectation for the EHR actor system is that all of the above RLE processes will be implemented as a single transaction. This will result in the EHR actor's (FHIR) data repository storing two (2) versions the WAT data FHIR resources:
* #1 - empty created version 1 instances, then
* #3 - the updated current version 2 instances

<p>&nbsp;</p>

### RLE Data Storage
The expectation here is that the generated RLE data FHIR instances will be:
* #2 - one [AuditEvent](http://hl7.org/fhir/R4/ehrsrle/ehrsrle-auditevent.html) and one [US Core Provenance (R4)] instance for each corresponding WAT data FHIR resource created, and
* #4 - one [AuditEvent](http://hl7.org/fhir/R4/ehrsrle/ehrsrle-auditevent.html) and one [US Core Provenance (R4)] instance for each corresponding WAT data FHIR resource updated

<p>&nbsp;</p>

### Data Examples

Example FHIR resource instances illustrating the expected contents of the WAT and RLE data (FHIR resource instances) the EHR actor system will store after each of the _FHIR RLE Events_:

**_1. Originate/Retain Record Entry_**
- [Condition-skinwoundassert-originate](Condition-skinwoundassert-originate.html)
- [Observation-skinwoundrelatedobservationspanel-originate](Observation-skinwoundrelatedobservationspanel-originate.html)
- [Observation-skinwoundbed-originate](Observation-skinwoundbed-originate.html)
- [Observation-skinwoundbedappearance-originate](Observation-skinwoundbedappearance-originate.html)

**_2. Evidence of Originate/Retain Record Entry_**
- [AuditEvent-skinwoundassert-originate-auditevent](AuditEvent-skinwoundassert-originate-auditevent.html)
- AuditEvent-skinwoundrelatedobservationspanel-originate-auditevent
- AuditEvent-skinwoundbed-originate-auditevent
- AuditEvent-skinwoundbedappearance-originate-auditevent
- [Provenance-skinwoundassert-originate-provenance](Provenance-skinwoundassert-originate-provenance.html)
- Provenance-skinwoundrelatedobservationspanel-originate-provenance
- Provenance-skinwoundbed-originate-provenance
- Provenance-skinwoundbedappearance-originate-provenance

**_3. Amend Record Entry Content_**
- [Condition-skinwoundassert-amend](Condition-skinwoundassert-amend.html)
- [Observation-skinwoundrelatedobservationspanel-amend](Observation-skinwoundrelatedobservationspanel-amend.html)
- [Observation-skinwoundbed-amend](Observation-skinwoundbed-amend.html)
- [Observation-skinwoundbedappearance-amend](Observation-skinwoundbedappearance-amend.html)

**_4. Evidence of Record Entry Ammendment Event_**
- [AuditEvent-skinwoundassert-amend-auditevent](AuditEvent-skinwoundassert-amend-auditevent.html)
- AuditEvent-skinwoundrelatedobservationspanel-amend-auditevent
- AuditEvent-skinwoundbed-amend-auditevent
- AuditEvent-skinwoundbedappearance-amend-auditevent
- [Provenance-skinwoundassert-amend-provenance](Provenance-skinwoundassert-amend-provenance.html)
- Provenance-skinwoundrelatedobservationspanel-amend-provenance
- Provenance-skinwoundbed-amend-provenance
- Provenance-skinwoundbedappearance-amend-provenance

<p>&nbsp;</p>

## Validation Test Details
**Validation of Wound Assessment Template (WAT) data**

_See [Use Case - Search](usecase-search.html): Query and retrieval of the Wound Assessment Template (WAT) data_

**Validation for Evidence of FHIR Record Lifecycle Event data**

The EHR actor will provide standard FHIR GET search operation support for query and retrieval of the [AuditEvent](http://hl7.org/fhir/R4/ehrsrle/ehrsrle-auditevent.html) and [US Core Provenance (R4)] resource instances created from the RLE Evidence events #2 and #4.

### AuditEvent
The search criteria will consist at a minimum of the AuditEvent patient parameter equal to the known Patient id and the date parameter set to a targeted datetime range. Additional optional search parameters could include the entity-type parameter equal to 'Condition' or 'Observation', and the type parameter equal to 'C' for Create or 'U' for Update.

### Provenance
The search criteria will consist at a minimum of the Provenance patient parameter equal to the known Patient id and the recorded parameter set to a targeted datetime range. Additional optional search parameters could include the target parameter equal to the known 'Condition' or 'Observation' resource references.

### Test Definition

**Actors:** Origin - External client system, or Test Platform; Destination - EHR actor (Note: Origin and Destination cannot be the same actor)

**Test Data:** _See Data Examples above_

**Setup:**
If the destination system is pre-populated prior to the test execution with known test data, the setup step can be skipped. Otherwise, for automated testing, the testing platform can send the known test data to the destination system.

**Action 1a (Test Step):**
Origin system executes a FHIR Search Interaction for the RLE [AuditEvent](http://hl7.org/fhir/R4/ehrsrle/ehrsrle-auditevent.html) or [US Core Provenance (R4)] resources matching a specific Patient id and date to the destination system
```
GET [base]/AuditEvent?patient=[Patient id]&date=[YYYY-MM-DD]

Accept: application/fhir+xml or application/fhir+json
```
```
GET [base]/Provenance?patient=[Patient id]&recorded=[YYYY-MM-DD]

Accept: application/fhir+xml or application/fhir+json
```

**Action 1b (Test Step):**
Origin system executes a FHIR Search Interaction for the RLE [AuditEvent](http://hl7.org/fhir/R4/ehrsrle/ehrsrle-auditevent.html) or [US Core Provenance (R4)] resources matching a specific Patient id, date and WAT resource type to the destination system
```
GET [base]/AuditEvent?patient=[Patient id]&date=[YYYY-MM-DD]&entity-type=Condition

Accept: application/fhir+xml or application/fhir+json
```
```
GET [base]/Provenance?patient=[Patient id]&recorded=[YYYY-MM-DD]&target=Observation

Accept: application/fhir+xml or application/fhir+json
```

**Request Success Criteria 1 (Asserts):**

* HTTP Accept header contains valid FHIR mime-type
* GET URL - verify expected search parameters in path
* HTTP response code is 200 (OK)
* HTTP response body is a FHIR Bundle Resource Type
* Validate the returned Bundle.entry.resource contents include the expected matching AuditEvent and/or Provenance instances
* Validate returned Bundle against base FHIR specification Bundle profile (FHIR Validation Engine will perform individual validation of each Bundle.entry.resource using their declared profile conformance)

<p>&nbsp;</p>

**Summary of FHIR Artifacts**

## FHIR Resource Overview

### Resources supported for this use case:
{:.no_toc}

|Resource Type|Profile Name|Link to R4 Profile|
|---|---|---|
|Patient|US Core Patient Profile|[US Core Patient (R4)]|
|Practitioner|US Core Practitioner Profile|[US Core Practitioner (R4)]|
|Encounter|US Core Encounter Profile|[US Core Encounter (R4)]|
|Condition|WoundAssert Condition Profile|[WoundAssert Condition (R4)]|
|Observation|WoundRelatedObservationsPanel Observation Profile|[WoundRelatedObservationsPanel Observation (R4)]|
|AuditEvent|FHIR AuditEvent Profile|[FHIR AuditEvent (R4)]|
|Provenance|US Core Provenance Profile|[US Core Provenance (R4)]|


{% include link-list.md %}

