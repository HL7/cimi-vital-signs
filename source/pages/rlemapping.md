---
title: RLE Mapping
layout: default
active: guidance
topofpage: true
r4: http://hl7.org/fhir/R4/
us_r4: http://hl7.org/fhir/us/core/
---

This section provides the key Record Lifecycle Event Metadata mapping requirements to the FHIR security [FHIR AuditEvent (R4)] and [FHIR Provenance (R4)] resource types.

The conformance verbs used are defined in [FHIR Conformance Rules].

---

<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->
**Contents**

* Do not remove this line (it will not be displayed)
{:toc}

---

<!-- end TOC -->

## Record Lifecycle Event Metadata Mapping

The following Record Lifecycle Event Metadata mappings are intended to facilitate the development and implementation of the recording of these events within all Skin Wound Assessment actor systems used in this guide. The Record Lifecycle Events Metadata mappings covered in this page are:
* 15.1.2 Record lifecycle event - Originate/retain record entry instance(s)
* 15.2.2 Record lifecycle event - Amend (update) record entry instance(s)
* 15.9 Record lifecycle event - Receive/retain record entry instance(s)

Additional RLE mappings will be provided in subsequent updates to this guide.

<br />

### AuditEvent Mapping

#### Originate/retain

ID | Conformance<br>Verb | Conformance<br>Criteria | FHIR<br>Resource | RLE<br>Mapping |
---|---|---|---|---
cc1 | SHALL | Who - Record Entry Subject - Individual Subject of Care ID | AuditEvent | WHO / Patient
cc2 | SHALL | Who - Accountable Health/care Party(ies), if applicable: | |
cc3 | SHOULD | - Digital Signature | |
cc4 | SHALL | - Organization ID/Descriptor | AuditEvent | WHO / Organization
cc5 | SHALL | - Business Unit ID/Descriptor | AuditEvent | WHO / Organization
cc6 | SHALL | - Individual Healthcare Professional, Caregiver ID | AuditEvent | WHO / Action - Performer
cc7 | SHOULD | - Role - relative to organization, business unit | AuditEvent | WHO / Action - Performer
cc8 | SHOULD | - Role - relative to Record Entry Instance: e.g. author, scribe/proxy, verifier | AuditEvent | WHO / Action - Performer
cc9 | SHOULD | - Role - relative to individual author of content | AuditEvent | WHO / Action - Performer
cc10 | SHOULD | - Scope of accountability | AuditEvent | WHO / Action - Performer
cc11 | SHALL | Who - Accountable Health/care Agent(s), if applicable: | |
cc12 | SHOULD | - Digital Signature | |
cc13 | SHALL | - Device, application or software ID | AuditEvent | WHO / Record - System/Device
cc14 | SHOULD | - Role - relative to Record Entry Instance: originator, source | AuditEvent | WHO / Record - System/Device
cc15 | SHOULD | - Scope of accountability | AuditEvent | WHO / Record - System/Device
cc16 | SHALL | What - Action Instance ID | AuditEvent | WHAT / Action - Taken
cc17 | SHALL | What - Record Entry Instance ID | AuditEvent | Add'l / Record Entry ID
cc18 | SHALL | What - Record Entry Lifecycle Event: originate | AuditEvent | WHAT / Record - Lifecycle Event
cc19 | SHALL | What - Record Entry instance status: e.g. new, updated, verified | AuditEvent | outcome (FHIR element)
cc20 | SHALL | What - Record Entry completion status: e.g. documented, dictated (pre-transcription), in progress, incomplete, pre-authenticated, authenticated, legally authenticated (ref: HL7) | AuditEvent | outcome (FHIR element)
cc21 | SHALL | When - Record Entry origination date/time | AuditEvent | WHEN / Action - Date/Time<br>WHEN / Record - Date/Time
cc22 | SHALL | Where - Record Entry physical location, point of origination | AuditEvent | WHERE / Action - Physical Location
cc23 | SHALL | Where - network address | |
cc24 | SHOULD | Why - rationale or purpose for Record Entry origination | AuditEvent | WHY / Action - Reason, Rationale, Purpose<br>WHY / Record - Reason, Rationale, Purpose
{: .grid}

#### Amend (update)

ID | Conformance<br>Verb | Conformance<br>Criteria | FHIR<br>Resource | RLE<br>Mapping |
---|---|---|---|---
cc1 | SHALL | Who - Record Entry Subject - Individual Subject of Care ID |AuditEvent | WHO / Patient
cc2 | SHALL | Who - Accountable Health/care Party(ies), if applicable: | |
cc3 | SHOULD | - Digital Signature | |
cc4 | SHALL | - Organization ID/Descriptor |AuditEvent | WHO / Organization
cc5 | SHALL | - Business Unit ID/Descriptor |AuditEvent | WHO / Organization
cc6 | SHALL | - Individual Healthcare Professional, Caregiver ID |AuditEvent | WHO / Action - Performer
cc7 | SHOULD | - Role - relative to organization, business unit |AuditEvent | WHO / Action - Performer
cc8 | SHOULD | - Role - relative to Record Entry Instance: e.g. author, scribe/proxy |AuditEvent | WHO / Action - Performer
cc9 | SHOULD | - Role - relative to individual author of content |AuditEvent | WHO / Action - Performer
cc10 | SHOULD | - Scope of accountability |AuditEvent | WHO / Action - Performer
cc11 | SHALL | What - Action Instance ID |AuditEvent | WHAT / Action - Taken
cc12 | SHALL | What - Record Entry Instance ID  |AuditEvent | Add'l / Record Entry ID
cc13 | SHALL | What - Record Entry Lifecycle Event: update |AuditEvent | WHAT / Record - Lifecycle Event
cc14 | SHALL | What - Record Entry instance status: e.g. updated |AuditEvent | outcome (FHIR element)
cc15 | SHALL | What - Record Entry completion status |AuditEvent | outcome (FHIR element)
cc16 | SHALL | When - Record Entry update date/time |AuditEvent | WHEN / Action - Date/Time<br>WHEN / Record - Date/Time
cc17 | SHALL | Where - Record Entry physical location, point of update |AuditEvent | WHERE / Action - Physical Location
cc18 | SHALL | Where - network address | |
cc19 | SHOULD | Why - rationale or purpose for Record Entry update |AuditEvent | WHY / Action - Reason, Rationale, Purpose<br>WHY / Record - Reason, Rationale, Purpose
{: .grid}

#### Receive/retain

ID | Conformance<br>Verb | Conformance<br>Criteria | FHIR<br>Resource | RLE<br>Mapping |
---|---|---|---|---
 cc1 | SHALL | Who - Record Entry Subject - Individual Subject of Care ID |AuditEvent | WHO / Patient
 cc2 | SHALL | Who - Source/Sender - Reporter, Discloser, Transmitter - Accountable Health/care Party(ies), if applicable: | |
 cc3 | SHALL | - Organization ID/Descriptor |AuditEvent | WHO / Organization
 cc4 | SHALL | - Business Unit ID/Descriptor |AuditEvent | WHO / Organization
 cc5 | SHALL | - Individual Healthcare Professional, Caregiver ID |AuditEvent | WHO / Action - Performer
 cc6 | SHALL | Who - Intended Recipient - Accountable Health/care Party(ies), if applicable: | |
 cc7 | SHALL | - Organization ID/Descriptor |AuditEvent | WHO / Organization
 cc8 | SHALL | - Business Unit ID/Descriptor |AuditEvent | WHO / Organization
 cc9 | SHALL | - Individual Healthcare Professional, Caregiver ID |AuditEvent | WHO / Action - Performer
 cc10 | SHOULD | - Role - relative to organization, business unit |AuditEvent | WHO / Action - Performer
 cc11 | SHOULD | - Role - relative to Record Entry Instance: e.g. recipient |AuditEvent | WHO / Action - Performer
 cc12 | SHOULD | - Scope of accountability |AuditEvent | WHO / Action - Performer
 cc13 | SHALL | Who - Accountable Health/care Agent(s), if applicable: | |
 cc14 | SHOULD | - Digital Signature | |
 cc15 | SHALL | - Device, application or software ID |AuditEvent | WHO / Record - System/Device
 cc16 | SHOULD | - Role - relative to Record Entry Instance: e.g. receiver |AuditEvent | WHO / Record - System/Device
 cc17 | SHOULD | - Scope of accountability |AuditEvent | WHO / Record - System/Device
 cc18 | SHALL | What - Action Instance ID |AuditEvent | WHAT / Action - Taken
 cc19 | SHALL | What - Record Entry Instance ID(s) |AuditEvent | Add'l / Record Entry ID
 cc20 | SHALL | What - Record Entry Lifecycle Event: receipt |AuditEvent | WHAT / Record - Lifecycle Event
 cc21 | SHALL | What - Record Entry instance status: e.g. received |AuditEvent | outcome
 cc22 | SHALL | What - Record Entry completion status: e.g. completed |AuditEvent | outcome
 cc23 | SHALL | When - Record Entry: e.g. date/time of receipt |AuditEvent | WHEN / Action - Date/Time<br>WHEN / Record - Date/Time
 cc24 | SHALL | Where - Record Entry physical location: e.g. point of receipt |AuditEvent | WHERE / Action - Physical Location
 cc25 | SHALL | Where - network address | |
 cc26 | SHOULD | Why - rationale or purpose for Record Entry receipt |AuditEvent | WHY / Action - Reason, Rationale, Purpose<br>WHY / Record - Reason, Rationale, Purpose
{: .grid}

<br />

### Provenance Mapping

#### Originate/retain

ID | Conformance<br>Verb | Conformance<br>Criteria | FHIR<br>Resource | RLE<br>Mapping |
---|---|---|---|---
cc1 | SHALL | Who - Record Entry Subject - Individual Subject of Care ID |Provenance | WHO / Patient
cc2 | SHALL | Who - Accountable Health/care Party(ies), if applicable: | |
cc3 | SHOULD | - Digital Signature |Provenance | Add'l / Digital Signature(s)
cc4 | SHALL | - Organization ID/Descriptor |Provenance | WHO / Organization
cc5 | SHALL | - Business Unit ID/Descriptor |Provenance | WHO / Organization
cc6 | SHALL | - Individual Healthcare Professional, Caregiver ID |Provenance | WHO / Action - Performer
cc7 | SHOULD | - Role - relative to organization, business unit |Provenance | WHO / Action - Performer
cc8 | SHOULD | - Role - relative to Record Entry Instance: e.g. author, scribe/proxy, verifier |Provenance | WHO / Action - Performer
cc9 | SHOULD | - Role - relative to individual author of content |Provenance | WHO / Action - Performer
cc10 | SHOULD | - Scope of accountability |Provenance | WHO / Action - Performer
cc11 | SHALL | Who - Accountable Health/care Agent(s), if applicable: | |
cc12 | SHOULD | - Digital Signature |Provenance | Add'l / Digital Signature(s)
cc13 | SHALL | - Device, application or software ID |Provenance | WHO / Record - System/Device
cc14 | SHOULD | - Role - relative to Record Entry Instance: originator, source |Provenance | WHO / Record - System/Device
cc15 | SHOULD | - Scope of accountability |Provenance | WHO / Record - System/Device
cc16 | SHALL | What - Action Instance ID |Provenance | WHAT / Action - Taken
cc17 | SHALL | What - Record Entry Instance ID |Provenance | Add'l / Record Entry ID
cc18 | SHALL | What - Record Entry Lifecycle Event: originate | |
cc19 | SHALL | What - Record Entry instance status: e.g. new, updated, verified | |
cc20 | SHALL | What - Record Entry completion status: e.g. documented, dictated (pre-transcription), in progress, incomplete, pre-authenticated, authenticated, legally authenticated (ref: HL7) | |
cc21 | SHALL | When - Record Entry origination date/time |Provenance | WHEN / Action - Date/Time<br>WHEN / Record - Date/Time
cc22 | SHALL | Where - Record Entry physical location, point of origination | |
cc23 | SHALL | Where - network address |Provenance | WHERE / Record - Network Address
cc24 | SHOULD | Why - rationale or purpose for Record Entry origination |Provenance | WHY / Action - Reason, Rationale, Purpose<br>WHY / Record - Reason, Rationale, Purpose
{: .grid}

#### Amend (update)

ID | Conformance<br>Verb | Conformance<br>Criteria | FHIR<br>Resource | RLE<br>Mapping |
---|---|---|---|---
cc1 | SHALL | Who - Record Entry Subject - Individual Subject of Care ID |Provenance | WHO / Patient
cc2 | SHALL | Who - Accountable Health/care Party(ies), if applicable: | |
cc3 | SHOULD | - Digital Signature |Provenance | Add'l / Digital Signature(s)
cc4 | SHALL | - Organization ID/Descriptor |Provenance | WHO / Organization
cc5 | SHALL | - Business Unit ID/Descriptor |Provenance | WHO / Organization
cc6 | SHALL | - Individual Healthcare Professional, Caregiver ID |Provenance | WHO / Action - Performer
cc7 | SHOULD | - Role - relative to organization, business unit |Provenance | WHO / Action - Performer
cc8 | SHOULD | - Role - relative to Record Entry Instance: e.g. author, scribe/proxy |Provenance | WHO / Action - Performer
cc9 | SHOULD | - Role - relative to individual author of content |Provenance | WHO / Action - Performer
cc10 | SHOULD | - Scope of accountability |Provenance | WHO / Action - Performer
cc11 | SHALL | What - Action Instance ID |Provenance | WHAT / Action - Taken
cc12 | SHALL | What - Record Entry Instance ID  |Provenance | Add'l / Record Entry ID
cc13 | SHALL | What - Record Entry Lifecycle Event: update | |
cc14 | SHALL | What - Record Entry instance status: e.g. updated | |
cc15 | SHALL | What - Record Entry completion status | |
cc16 | SHALL | When - Record Entry update date/time |Provenance | WHEN / Action - Date/Time<br>WHEN / Record - Date/Time
cc17 | SHALL | Where - Record Entry physical location, point of update | |
cc18 | SHALL | Where - network address |Provenance | WHERE / Record - Network Address
cc19 | SHOULD | Why - rationale or purpose for Record Entry update |Provenance | WHY / Action - Reason, Rationale, Purpose<br>WHY / Record - Reason, Rationale, Purpose
{: .grid}

#### Receive/retain

ID | Conformance<br>Verb | Conformance<br>Criteria | FHIR<br>Resource | RLE<br>Mapping |
---|---|---|---|---
cc1 | SHALL | Who - Record Entry Subject - Individual Subject of Care ID |Provenance | WHO / Patient
cc2 | SHALL | Who - Source/Sender - Reporter, Discloser, Transmitter - Accountable Health/care Party(ies), if applicable: | |
cc3 | SHALL | - Organization ID/Descriptor |Provenance | WHO / Organization
cc4 | SHALL | - Business Unit ID/Descriptor |Provenance | WHO / Organization
cc5 | SHALL | - Individual Healthcare Professional, Caregiver ID |Provenance | WHO / Action - Performer
cc6 | SHALL | Who - Intended Recipient- Accountable Health/care Party(ies), if applicable: | |
cc7 | SHALL | - Organization ID/Descriptor |Provenance | WHO / Organization
cc8 | SHALL | - Business Unit ID/Descriptor |Provenance | WHO / Organization
cc9 | SHALL | - Individual Healthcare Professional, Caregiver ID |Provenance | WHO / Action - Performer
cc10 | SHOULD | - Role - relative to organization, business unit |Provenance | WHO / Action - Performer
cc11 | SHOULD | - Role - relative to Record Entry Instance: e.g. recipient |Provenance | WHO / Action - Performer
cc12 | SHOULD | - Scope of accountability |Provenance | WHO / Action - Performer
cc13 | SHALL | Who - Accountable Health/care Agent(s), if applicable: | |
cc14 | SHOULD | - Digital Signature |Provenance | Add'l / Digital Signature(s)
cc15 | SHALL | - Device, application or software ID |Provenance | WHO / Record - System/Device
cc16 | SHOULD | - Role - relative to Record Entry Instance: e.g. receiver |Provenance | WHO / Record - System/Device
cc17 | SHOULD | - Scope of accountability |Provenance | WHO / Record - System/Device
cc18 | SHALL | What - Action Instance ID |Provenance | WHAT / Action - Taken
cc19 | SHALL | What - Record Entry Instance ID(s) |Provenance | Add'l / Record Entry ID
cc20 | SHALL | What - Record Entry Lifecycle Event: receipt | |
cc21 | SHALL | What - Record Entry instance status: e.g. received | |
cc22 | SHALL | What - Record Entry completion status: e.g. completed | |
cc23 | SHALL | When - Record Entry: e.g. date/time of receipt |Provenance | WHEN / Action - Date/Time<br>WHEN / Record - Date/Time
cc24 | SHALL | Where - Record Entry physical location: e.g. point of receipt | |
cc25 | SHALL | Where - network address |Provenance | WHERE / Record - Network Address
cc26 | SHOULD | Why - rationale or purpose for Record Entry receipt |Provenance | WHY / Action - Reason, Rationale, Purpose<br>WHY / Record - Reason, Rationale, Purpose
{: .grid}


#### US Core Provenance Mapping
* [US Core Basic Provenance Guidance (R4)]
* [US Core Provenance (R4)]
* Table of Provenance data elements and the mapping to their data sources
  * Baseline mappings from [US Core Basic Provenance Guidance (R4)]

---

{% include link-list.md %}

