---
title: Use Case - Receive and Retain
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

### Wound Assessment Template (WAT) Scenario - Use Case - Originate and Retain.

Demonstrate how an EHR actor incorporates the [FHIR Record Lifecycle Event (RLE) Implementation Guide (IG)](http://hl7.org/fhir/R4/ehrsrle/ehrsrle.html) processing of the Originate/Retain and Amend Record Content events when receiving Wound Assessement Template data.

The focus of this use case is the verification and validation of recording and storage of the FHIR Record Lifecycle Event data represented by the FHIR Resource Types of [AuditEvent](http://hl7.org/fhir/R4/ehrsrle/ehrsrle-auditevent.html) and [US Core Provenance (R4)].

<p>&nbsp;</p>

## Actors

The following actors, FHIR Interactions and RLE events are part of this Use Case:

* **Wound Assessment Registry (and Repository)**
  * _FHIR Interactions from other EHR actors_:
    * create, read, update, search and transaction of WAT data

* **EHR - Example: Primary Care Physician (PCP)**
  * _FHIR Interactions to Registry_:
    * create, read, update, search and transaction of WAT data
  * _FHIR RLE Events_:
    * Receive/Retain Record Entry
    * Evidence of Receive/Retain Record Entry

<p>&nbsp;</p>

## Summary Workflow

This use case defines the FHIR Record Lifecycle Event processes performed by an EHR actor when sending the Wound Assessment Template data for a given Patient encounter to the Wound Assessment Registry (WAR) actor. The workflow is outlined in the following figure.

{% include img-default.html img="UseCase_Receive.jpg" caption="Use Case Receive and Retain" %}

<p>&nbsp;</p>

## Expected Behavior

The following is the expected behavior of the Wound Assessment Registry (WAR) actor system when implementing the _FHIR RLE Events_ when receiving Wound Assessment Template data from an EHR actor:

**_1. Receive/Retain Record Entry_**
The creation of the the Wound Assessment Template data as empty FHIR resource instances of
* The [WoundAssert Condition (R4)] profiled **Condition**
* The [WoundRelatedObservationsPanel Observation (R4)] profiled **Observation**
  * The various Wound profiled related **Observations**

**_2. Evidence of Receive/Retain Record Entry_**
The creation of the corresponding FHIR RLE [AuditEvent](http://hl7.org/fhir/R4/ehrsrle/ehrsrle-auditevent.html) and [US Core Provenance (R4)] resources related to #1.

### WAT Data Storage
The expectation for the Wound Assessment Registry (WAR) actor system is that all of the Wound Assessment Template data will be processeded as a single transaction. This will result in the Wound Assessment Registry (WAR) actor's (FHIR) data repository storing a local copy of the WAT data FHIR resources:
* #1 - fully populated created version 1 instances

### RLE Data Storage
The expectation here is that the generated RLE data FHIR instances will be:
* #2 - one [AuditEvent](http://hl7.org/fhir/R4/ehrsrle/ehrsrle-auditevent.html) and one [US Core Provenance (R4)] instance for each corresponding WAT data FHIR resource received and created

<p>&nbsp;</p>

### Data Examples

Example FHIR resource instances illustrating the expected contents of the WAT and RLE data (FHIR resource instances) the Wound Assessment Registry (WAR) actor system will store after each of the _FHIR RLE Events_:

**_1. Receive/Retain Record Entry_**
- [Condition-skinwoundassert-receive](Condition-skinwoundassert-receive.html)
- [Observation-skinwoundrelatedobservationspanel-receive](Observation-skinwoundrelatedobservationspanel-receive.html)
- [Observation-skinwoundbed-receive](Observation-skinwoundbed-receive.html)
- [Observation-skinwoundbedappearance-receive](Observation-skinwoundbedappearance-receive.html)

**_2. Evidence of Receive/Retain Record Entry_**
- [AuditEvent-skinwoundassert-receive-auditevent](AuditEvent-skinwoundassert-receive-auditevent.html)
- AuditEvent-skinwoundrelatedobservationspanel-receive-auditevent
- AuditEvent-skinwoundbed-receive-auditevent
- AuditEvent-skinwoundbedappearance-receive-auditevent
- [Provenance-skinwoundassert-receive-provenance](Provenance-skinwoundassert-receive-provenance.html)
- Provenance-skinwoundrelatedobservationspanel-receive-provenance
- Provenance-skinwoundbed-receive-provenance
- Provenance-skinwoundbedappearance-receive-provenance

<p>&nbsp;</p>

## Validation Test Details
**Validation of Wound Assessment Template (WAT) data**

_See [Use Case - Search](usecase-search.html): Query and retrieval of the Wound Assessment Template (WAT) data_

**Validation for Evidence of FHIR Record Lifecycle Event data**

The Wound Assessment Registry (WAR) actor system will provide standard FHIR GET search operation support for query and retrieval of the [AuditEvent](http://hl7.org/fhir/R4/ehrsrle/ehrsrle-auditevent.html) and [US Core Provenance (R4)] resource instances received and created from the RLE Evidence event #2.

### AuditEvent
The search criteria will consist at a minimum of the AuditEvent patient parameter equal to the known Patient id and the date parameter set to a targeted datetime range. Additional optional search parameters could include the entity-type parameter equal to 'Condition' or 'Observation', and the type parameter equal to 'C' for Create or 'U' for Update.

### Provenance
The search criteria will consist at a minimum of the Provenance patient parameter equal to the known Patient id and the recorded parameter set to a targeted datetime range. Additional optional search parameters could include the target parameter equal to the known 'Condition' or 'Observation' resource references.

### Test Definition

**Actors:** Origin - External client system, or Test Platform; Destination - Wound Assessment Registry (WAR) actor (Note: Origin and Destination cannot be the same actor)

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

