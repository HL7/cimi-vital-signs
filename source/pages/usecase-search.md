---
title: Use Case - Search
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

### Wound Assessment Template (WAT) Scenario - Use Case - Search.

<p>&nbsp;</p>

## Actors

The following actors and FHIR interactions are part of this Use Case:

* **Wound Assessment Registry (and Repository)**
  * _FHIR Interactions from other EHR actors_:
    * read and search of WAT data

* **EHR - Example: Primary Care Physician (PCP)**
  * _FHIR Interactions to Registry_:
    * read and search of WAT data

<p>&nbsp;</p>

## Summary Workflow

This use case defines one or more FHIR search operations initiated by the EHR actor to the Wound Assessment Registry actor. The workflow is outlined in the following figure.

{% include img-default.html img="UseCase_Search.jpg" caption="Use Case Search" %}

<p>&nbsp;</p>

## FHIR Search Interactions

The first search interaction for the WAT retrieval will be based on the WAT profiled Condition resource type where the following search parameters will be incorporated:

* **_profile** - The value will be fixed to the WAT profiled Condition resource type canonical URI "http://hl7.org/fhir/us/skinwoundassessment/StructureDefinition/WoundAssert"
* **asserted-date** - Default to today's date
  * Specific date, default can be current date; or,
  * Date range where one or two instances of the search parameter are given with either the 'ge' (greater than or equal) or 'le' (less than or equal) prefixes
* **patient** - (Optional, if known) Specific Patient.id reference

The second search interaction for the WAT retrieval will be on the WAT profiled related Observation(s) referenced from the returned WAT Condition resources in the first search interaction where the follow search interactions will be incorportated:

* **_id** - The WAT related Observation wound panel resource id(s) returned from the first search
* **_include:recurse** (WoundRelatedObservationsPanel) - Observation:related-target

<p>&nbsp;</p>

### Examples

_Specific date search_
```
GET [base]/Condition?_profile=http://hl7.org/fhir/us/skinwoundassessment/StructureDefinition/WoundAssert&asserted-date=2019-04-19&patient=1234
```

_Date range search_
```
GET [base]/Condition?_profile=http://hl7.org/fhir/us/skinwoundassessment/StructureDefinition/WoundAssert&asserted-date=ge2019-04-18&asserted-date=le2019-04-20&patient=1234
```

<p>&nbsp;</p>

## Implementation Details
**EHR search for WAT data from Wound Assessment Registry (WAR)**

The process of a single EHR actor retrieving existing specific Skin Wound Assessment data from the Wound Assessment Registry (WAR) is done via a FHIR GET search operation that targets the Skin Wound Assessment conformant (profiled) Condition resource type. The search criteria will consist at a minimum of the Condition.meta.profile equal to the Skin Wound Assessment IG WoundAssert profile canonical URL and a targeted datetime range. An additional search result parameter for inclusion of the WoundRelatedObservationsPanel profiled Observation Resources will also be defined in the search criteria parameters. This _include result parameter will also have the :recurse modifier in insure all related Observations in the panel are returned.

The expectation is that the WAR will manage the wound data to insure there is no duplication of data. For example, if the targeted datetime ranges for muliple search interactions overlap, the WAR will examine each Resource returned to determine if that Resource has already been received from a prior search interaction. If a Resource is received and matches an existing Resource previously received, the WAR will either replace that Resource or perform a FHIR update (preferred) of the existing Resource.

The WAR will manage the retrieved data to insure there is no loss of data. For example, the WAR will insure the targeted datetime ranges between search interaction executions do not have any datetime gaps, or provide a degree of datetime period overlap where duplication of data is handled (see above).

### Test Definition

**Actors:** Origin - EHR actor, or Test Platform; Destination - Wound Assessment Registry (WAR) (Note: Origin and Destination cannot be the same actor)

**Test Data:**
_See [Use Case - Originate and Retain (null), then Amend (populate with clinical content)](usecase-originate.html)_
_See [Use Case - Receive and Retain](usecase-receive.html)_

**Setup:**
If the destination system is pre-populated prior to the test execution with known test data, the setup step can be skipped. Otherwise, for automated testing, the testing platform can send the known test data to the destination system.

**Action 1a (Test Step):**
Origin system executes a FHIR Search Interaction for the Skin Wound Assessment Condition(s) matching a specific date and optional Patient to the destination system, or
```
GET [base]/Condition?_profile=http://hl7.org/fhir/us/skinwoundassessment/StructureDefinition/WoundAssert&asserted-date=[YYYY-MM-DD]{&patient=[Patient id]}

Accept: application/fhir+xml or application/fhir+json
```

**Action 1b (Test Step):**
Origin system executes a FHIR Search Interaction for the WAT Condition(s) within a specific date range and optional Patient to the destination system
```
GET [base]/Condition?_profile=http://hl7.org/fhir/us/skinwoundassessment/StructureDefinition/WoundAssert&asserted-date=ge[YYYY-MM-DD]&asserted-date=le[YYYY-MM-DD]{&patient=[Patient id]}

Accept: application/fhir+xml or application/fhir+json
```

**Request Success Criteria 1 (Asserts):**

* HTTP Accept header contains valid FHIR mime-type
* GET URL - verify expected search parameters in path
* HTTP response code is 200 (OK)
* HTTP response body is a FHIR Bundle Resource Type
* Validate all returned Bundle.entry.resource contents declare profile conformance to Podiatry WAT IG
* Validate returned Bundle against base FHIR specification Bundle profile (FHIR Validation Engine will perform individual validation of each Bundle.entry.resource using their declared profile conformance)

**Action 2 (Test Step):**
Origin system executes a FHIR Search Interaction for the WAT related Observation(s) for a WAT Condition retrieved in Action 1a or 1b to the destination system
```
GET [base]/Observation?_include:recurse=Observation:related-target&_id=[WAT Condition id]

Accept: application/fhir+xml or application/fhir+json
```

**Request Success Criteria 2 (Asserts): (for peer-to-peer)**

* HTTP Accept header contains valid FHIR mime-type
* GET URL - verify expected search parameters in path
* HTTP response code is 200 (OK)
* HTTP response body is a FHIR Bundle Resource Type
* Validate all returned Bundle.entry.resource contents declare profile conformance to Podiatry WAT IG
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


{% include link-list.md %}

