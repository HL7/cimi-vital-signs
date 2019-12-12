---
title: General Guidance
layout: default
active: guidance
topofpage: true
r4: http://hl7.org/fhir/R4/
us_r4: http://hl7.org/fhir/us/core/
---

This section outlines important definitions and interpretations and requirements common to all Skin Wound Assessment actors used in this guide.

The conformance verbs used are defined in [FHIR Conformance Rules].

---

<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->
**Contents**

* Do not remove this line (it will not be displayed)
{:toc}

---

<!-- end TOC -->

## Use Case Guidance

The Use Case definitions represent descrete portions of functionality within a given EHR actor system and/or Wound Assessment Registry (WAR) actor system complete workflow in capturing Wound Assessment Template data. This specificity provides the implementer with a more focused representation of the needed functionality within their given system.

Please refer to each Use Case definition page for specific guidance:

1. [Use Case - Originate and Retain (null), then Amend (populate with clinical content)](usecase-originate.html): FHIR Record Lifecycle Event (RLE) Originate and Retain, and Amend in relation to the initial creation of the Wound Assessment Template (WAT) data as empty templates and then fully populated instances in an EHR actor system
  * This represents the first trial definition of incorporating the RLE Originate and Retain event and RLE Amend event into the the WAT data creation. This is the simplest way for the local system to demonstrate that the "populate with clinical content" step began from an "all null clinical content" state. This also establishes that the null-state template may pre-exist on the local system for any interval (seconds to years) prior to its "Amend" to add an instance of assessment.
  * For future work, we may identify the complexity of demonstrating that the null-state version could be empty also of patient demographics, thus the null state could be used as the initial state for all subsequent patient-specific captures as Amend events to the all-null original.


2. [Use Case - Receive and Retain](usecase-receive.html): FHIR Record Lifecycle Event (RLE) Receive and Retain in relation to the sending of Wound Assessment Template (WAT) data from an EHR actor system to a Wound Assessement Registry (WAR) actor system

3. [Use Case - Search](usecase-search.html): Query and retrieval of the Wound Assessment Template (WAT) data from either an EHR actor system or Wound Assessement Registry (WAR) actor system


## Record LifeCycle Events - Metadata Captured in FHIR Resources

_The following table has been updated with corrected mappings to the FHIR R4 specification [AuditEvent](http://hl7.org/fhir/R4/ehrsrle/ehrsrle-auditevent.html) and [Provenance](http://hl7.org/fhir/R4/ehrsrle/ehrsrle-provenance.html) resource types._

The following table shows the FHIR Resources and applicable Attributes captured - event, provenance and evidentiary metadata - at each occurrence of a Record Lifecycle Event. W5 metadata includes who, what, when, where, why attributes as shown below. W5 metadata elements are required.

<table border="1" cellspacing="0" cellpadding="5" style="border-collapse:collapse;border:solid windowtext 1pt">
	<thead>
		<tr>
			<td style="font-weight:bold">Record Lifecycle Event Metadata</td>
			<td style="font-weight:bold">FHIR R4 Resource</td>
			<td style="font-weight:bold">Resource Element(s)</td>
		</tr>
	</thead>
	<tr>
		<td colspan="3" style="background:#C6D9F1">WHO</td>
	</tr>
	<tr>
		<td rowspan="3">Organization</td>
		<td>Provenance</td>
		<td>signature : Signature 0..*</td>
	</tr>
	<tr>
		<td>Provenance.agent : 1..*</td>
		<td>
			type: CodeableConcept 0..1 &laquo; ProvenanceParticipantType+ &raquo;
			<br />
			role: CodeableConcept 0..* &laquo; SecurityRoleType+ &raquo;
			<br />
			who: Reference (Organization) 1..1
			<br />
			onBehalfOf: Reference (Organization) 0..1
		</td>
	</tr>
	<tr>
		<td>AuditEvent.agent : 1..*</td>
		<td>
			type: CodeableConcept 0..1 &laquo; ParticipationRoleType &raquo;
			<br />
			role: CodeableConcept 0..* &laquo; SecurityRoleCode &raquo;
			<br />
			who: Resource(Organization) 0..1
			<br />
			altId: string 0..1
		</td>
	</tr>
	<tr>
		<td rowspan="3">Patient</td>
		<td>Provenance</td>
		<td>signature : Signature 0..*</td>
	</tr>
	<tr>
		<td>Provenance.agent : 1..*</td>
		<td>
			type: CodeableConcept 0..1 &laquo; ProvenanceParticipantType+ &raquo;
			<br />
			role: CodeableConcept 0..* &laquo; SecurityRoleType+ &raquo;
			<br />
			who: Reference (Patient) 1..1
			<br />
			onBehalfOf: Reference (Patient) 0..1
		</td>
	</tr>
	<tr>
		<td>AuditEvent.agent : 1..*</td>
		<td>
			type: CodeableConcept 0..1 &laquo; ParticipationRoleType &raquo;
			<br />
			role: CodeableConcept 0..* &laquo; SecurityRoleCode &raquo;
			<br />
			who: Resource(Patient) 0..1
			<br />
			altId: string 0..1
		</td>
	</tr>
	<tr>
		<td rowspan="3">
			<p>Action - Performer</p>
			<p>Record - Author/User</p>
		</td>
		<td>Provenance</td>
		<td>signature : Signature 0..*</td>
	</tr>
	<tr>
		<td>Provenance.agent : 1..*</td>
		<td>
			type: CodeableConcept 0..1 &laquo; ProvenanceParticipantType+ &raquo;
			<br />
			role: CodeableConcept 0..* &laquo; SecurityRoleType+ &raquo;
			<br />
			who: Reference (Practitioner|PractitionerRole|RelatedPerson|Patient|Device|Organization) 1..1
			<br />
			onBehalfOf: Reference (Practitioner|PractitionerRole|RelatedPerson|Patient|Device|Organization) 0..1
		</td>
	</tr>
	<tr>
		<td>AuditEvent.agent : 1..*</td>
		<td>
			type: CodeableConcept 0..1 &laquo; ParticipationRoleType &raquo;
			<br />
			role: CodeableConcept 0..* &laquo; SecurityRoleCode &raquo;
			<br />
			who: Resource(PractitionerRole|Practitioner|Organization|Device|Patient|RelatedPerson) 0..1
			<br />
			altId: string 0..1
		</td>
	</tr>
	<tr>
		<td rowspan="3">Record - System/Device</td>
		<td>Provenance</td>
		<td>signature : Signature 0..*</td>
	</tr>
	<tr>
		<td>Provenance.agent : 1..*</td>
		<td>
			type: CodeableConcept 0..1 &laquo; ProvenanceParticipantType+ &raquo;
			<br />
			role: CodeableConcept 0..* &laquo; SecurityRoleType+ &raquo;
			<br />
			who: Reference (Device) 1..1
			<br />
			onBehalfOf: Reference (Device) 0..1
		</td>
	</tr>
	<tr>
		<td>AuditEvent.agent : 1..*</td>
		<td>
			type: CodeableConcept 0..1 &laquo; ParticipationRoleType &raquo;
			<br />
			role: CodeableConcept 0..* &laquo; SecurityRoleCode &raquo;
			<br />
			who: Resource(Device) 0..1
			<br />
			altId: string 0..1
		</td>
	</tr>
	<tr>
		<td colspan="3" style="background:#C6D9F1">WHAT</td>
	</tr>
	<tr>
		<td rowspan="2">Action - Taken</td>
		<td>Provenance</td>
		<td>activity: CodeableConcept 0..1 &laquo; ProvenanceActivityType &raquo;</td>
	</tr>
	<tr>
		<td>AuditEvent</td>
		<td>
			type: Coding 1..1 &laquo; AuditEventID+ &raquo;
			<br />
			subtype: Coding 0..* &laquo; AuditEventSub-Type+ &raquo;
			<br />
			action: code 0..1 &laquo; AuditEventAction &raquo;
		</td>
	</tr>
	<tr>
		<td>Record - Lifecyle Event</td>
		<td>AuditEvent.entity: 0..*</td>
		<td>
			what: Reference(Any) 0..1
			<br />
			type: Coding 0..1 &laquo; AuditEventEventType &raquo;
			<br />
			role: Coding 0..1 &laquo; AuditEventEventRole &raquo;
			<br />
			lifecycle: Coding 0..1 &laquo; ObjectLifecycleEvents &raquo;
		</td>
	</tr>
	<tr>
		<td colspan="3" valign="top" style="background:#C6D9F1">WHEN</td>
	</tr>
	<tr>
		<td rowspan="2">Action - Date/Time</td>
		<td>Provenance</td>
		<td>occurredPeriod : Period 0..1</td>
	</tr>
	<tr>
		<td>AuditEvent</td>
		<td>period : Period 0..1</td>
	</tr>
	<tr>
		<td rowspan="2">Record - Date/Time</td>
		<td>Provenance</td>
		<td>recorded : instant 1..1</td>
	</tr>
	<tr>
		<td>AuditEvent</td>
		<td>recorded : instant 1..1</td>
	</tr>
	<tr>
		<td colspan="3" valign="top" style="background:#C6D9F1">WHERE</td>
	</tr>
	<tr>
		<td rowspan="2">Action - Physical Location</td>
		<td>Provenance</td>
		<td>location : Reference(Location) 0..1</td>
	</tr>
	<tr>
		<td>AuditEvent.source : 1..1</td>
		<td>
			site: string 0..1
			<br />
			observer: Reference (Organization) 1..1
			<br />
			type: Coding 0..* &laquo; AuditEventSourceType &raquo;
		</td>
	</tr>
	<tr>
		<td rowspan="2">Record - Network Address</td>
		<td>Provenance</td>
		<td>location : Reference(Location) 0..1</td>
	</tr>
	<tr>
		<td>AuditEvent.agent.network</td>
		<td>
			address : string 0..1
			<br />
			type : code 0..1 &laquo; AuditEventAgentNetworkType &raquo;
		</td>
	</tr>
	<tr>
		<td colspan="3" valign="top" style="background:#C6D9F1">WHY</td>
	</tr>
	<tr>
		<td rowspan="2">Action - Reason, Rationale, Purpose</td>
		<td>Provenance</td>
		<td>reason : CodeableConcept 0..*</td>
	</tr>
	<tr>
		<td>AuditEvent.agent : 1..*</td>
		<td>purposeOfUse : CodeableConcept 0..* &laquo; v3.PurposeOfUse &raquo;</td>
	</tr>
	<tr>
		<td rowspan="2">Record - Reason, Rationale, Purpose</td>
		<td>Provenance</td>
		<td>
			reason : CodeableConcept 0..*
			<br />
			policy : uri 0..*
		</td>
	</tr>
	<tr>
		<td>AuditEvent</td>
		<td>purposeOfEvent : CodeableConcept 0..* &laquo; v3.PurposeOfUse &raquo;</td>
	</tr>
	<tr>
		<td colspan="3" valign="top" style="background:#C6D9F1">Additional Evidentiary Metadata, as applicable</td>
	</tr>
	<tr>
		<td>Digital Signature(s)</td>
		<td>
			Provenance
			<br />
			<span style="color:blue">one per signature</span>
		</td>
		<td>signature : Signature 0..*</td>
	</tr>
	<tr>
		<td rowspan="2">Record Entry ID</td>
		<td>Provenance</td>
		<td>target : Reference(Any) 1..*</td>
	</tr>
	<tr>
		<td>AuditEvent.entity : 0..*</td>
		<td>what : Reference(Any) 0..1</td>
	</tr>
	<tr>
		<td rowspan="3">
			Record Entry Content ID(s):
			<br />
			data, docs, artifacts
		</td>
		<td>Provenance</td>
		<td>target : Reference(Any) 1..*</td>
	</tr>
	<tr>
		<td>
			Provenance.entity : 0..*
			<br />
			<span style="color:blue">one per Record Entry</span>
		</td>
		<td>
			role : code 0..1 &laquo; ProvenanceEntityRole &raquo;
			<br />
			what : Reference(Any) 1..1
			<br />
			agent : [see Provenance.agent]
		</td>
	</tr>
	<tr>
		<td>
			AuditEvent.entity : 0..*
			<br />
			<span style="color:blue">one per Content item</span>
		</td>
		<td>
			what : Reference(Any) 0..1
			<br />
			type : Coding 0..1 &laquo; AuditEventEventType &raquo;
			<br />
			role : Coding 0..1 &laquo; AuditEventEventRole &raquo;
		</td>
	</tr>
	<tr>
		<td rowspan="2">Corresponding/linked Record Entry(ies)</td>
		<td>
			Provenance.entity : 0..*
			<br />
			<span style="color:blue">one per linked Record Entry</span>
		</td>
		<td>
			role : code 1..1 &laquo; ProvenanceEntityRole &raquo;
			<br />
			what : Reference(Any) 1..1
			<br />
			agent : [see Provenance.agent]
		</td>
	</tr>
	<tr>
		<td>
			AuditEvent.entity : 0..*
			<br />
			<span style="color:blue">one per linked Record Entry</span>
		</td>
		<td>
			what : Reference(Any) 0..1
			<br />
			type : Coding 0..1 &laquo; AuditEventEventType &raquo;
			<br />
			role : Coding 0..1 &laquo; AuditEventEventRole &raquo;
		</td>
	</tr>
	<tr>
		<td rowspan="2">Amendment/Translation Sequence</td>
		<td>
			Provenance.entity : 0..*
			<br />
			<span style="color:blue">one for each Record Entry in sequence</span>
		</td>
		<td>
			role : code 1..1 &laquo; ProvenanceEntityRole &raquo;
			<br />
			what : Reference(Any) 1..1
			<br />
			agent : [see Provenance.agent]
		</td>
	</tr>
	<tr>
		<td>AuditEvent.entity : 0..*</td>
		<td>lifecycle: Coding 0..1 &laquo; ObjectLifecycleEvents &raquo;</td>
	</tr>
	<tr>
		<td rowspan="2">Pointer to Pre Event Entry, if chained</td>
		<td>
			Provenance.entity : 0..*
			<br />
			<span style="color:blue">one per previous instance</span>
		</td>
		<td>
			role : code 1..1 &laquo; ProvenanceEntityRole &raquo;
			<br />
			what : Reference(Any) 1..1
			<br />
			agent : [see Provenance.agent]
		</td>
	</tr>
	<tr>
		<td>
			AuditEvent.entity : 0..*
			<br />
			<span style="color:blue">one per previous instance</span>
		</td>
		<td>
			what : Reference(Any) 0..1
			<br />
			type : Coding 0..1 &laquo; AuditEventEventType &raquo;
			<br />
			role : Coding 0..1 &laquo; AuditEventEventRole &raquo;
		</td>
	</tr>
	<tr>
		<td rowspan="3">
			Source of Copied Content
			<br />
			(e.g. copy/paste template)
		</td>
		<td>
			Provenance.entity : 0..*
			<br />
			<span style="color:blue">one per source</span>
		</td>
		<td>
			role : code 1..1 &laquo; ProvenanceEntityRole &raquo;
			<br />
			what : Reference(Any) 1..1
			<br />
			agent : [see Provenance.agent]
		</td>
	</tr>
	<tr>
		<td>
			AuditEvent.source : 1..1
			<br />
			<span style="color:blue">one per source</span>
		</td>
		<td>
			site: string 0..1
			<br />
			observer: Reference(PractitionerRole|Practitioner|Organization|Device|Patient|RelatedPerson) 1..1
			<br />
			type: Coding 0..* &laquo; AuditEventSourceType &raquo;
		</td>
	</tr>
	<tr>
		<td>
			AuditEvent.entity : 0..*
			<br />
			<span style="color:blue">one per source</span>
		</td>
		<td>
			what : Reference(Any) 0..1
			<br />
			type : Coding 0..1 &laquo; AuditEventEventType &raquo;
			<br />
			role : Coding 0..1 &laquo; AuditEventEventRole &raquo;
		</td>
	</tr>
	<tr>
		<td>Event is known Disclosure</td>
		<td>AuditEvent.entity : 0..*</td>
		<td>
			lifecycle: Coding 0..1 &laquo; ObjectLifecycleEvents &raquo;
			<br />
			where lifecycle = "disclose"
		</td>
	</tr>
	<tr>
		<td rowspan="2">Record Entry Permissions</td>
		<td>
			AuditEvent.agent : 1..*
			<br />
			<span style="color:blue">one per agent</span>
		</td>
		<td>
			<b>[for role-based permissions]</b>
			<br />
			role: CodeableConcept 0..* &laquo; SecurityRoleCode &raquo;
			<br />
			<b>[for user-based permissions]</b>
			<br />
			who: Resource(PractitionerRole|Practitioner|Organization|Device|Patient|RelatedPerson) 0..1
			<br />
			altId: string 0..1
		</td>
	</tr>
	<tr>
		<td>
			AuditEvent.entity : 0..*
			<br />
			<span style="color:blue">One per agent label</span>
		</td>
		<td>securityLabel : Coding 0..* &laquo; SecurityLabels &raquo;</td>
	</tr>
	<tr>
		<td rowspan="2">Event Transaction Entries</td>
		<td>
			Provenance.entity : 0..*
			<br />
			<span style="color:blue">one per Record Entry</span>
		</td>
		<td>
			role : code 1..1 &laquo; ProvenanceEntityRole &raquo;
			<br />
			what : Reference(Any) 1..1
			<br />
			agent : [see Provenance.agent]
		</td>
	</tr>
	<tr>
		<td>
			AuditEvent.entity : 0..*
			<br />
			<span style="color:blue">one per Record Entry</span>
		</td>
		<td>
			what : Reference(Any) 0..1
			<br />
			type : Coding 0..1 &laquo; AuditEventEventType &raquo;
			<br />
			role : Coding 0..1 &laquo; AuditEventEventRole &raquo;
		</td>
	</tr>
	<tr>
		<td rowspan="2">Identifier/Version of Translation Tools</td>
		<td>
			Provenance.entity : 0..*
			<br />
			<span style="color:blue">one per translation event</span>
		</td>
		<td>
			role : code 1..1 &laquo; ProvenanceEntityRole &raquo;
			<br />
			what : Reference(Any) 1..1
			<br />
			agent : [see Provenance.agent]
		</td>
	</tr>
	<tr>
		<td>
			AuditEvent.agent : 1..*
			<br />
			<span style="color:blue">one per translation event</span>
		</td>
		<td>
			type: CodeableConcept 0..1 &laquo; ParticipationRoleType &raquo;
			<br />
			role: CodeableConcept 0..* &laquo; SecurityRoleCode &raquo;
			<br />
			who: Resource(Device) 0..1
			<br />
			altId: string 0..1
		</td>
	</tr>
</table>


## Record LifeCycle Events - Conformance Criteria

Processing of the FHIR Record Lifecycle Events (RLE) is defined as the capture of Conformance Criteria from the [ISO/TS 21089](https://www.iso.org/obp/ui/#iso:std:iso:ts:21089:ed-1:v1:en) Record lifecycle events and action instances sections. The initial minimum required candidate Conformance Criteria are highlighted and shall be captured if the recording system supports this data. Additional criteria may be processed by a system but will not be required at this time.

_Please see the [Guidance - RLE Mapping] page for specific guidance on mapping these criteria to FHIR RLE resource types [AuditEvent](http://hl7.org/fhir/R4/ehrsrle/ehrsrle-auditevent.html) and [US Core Provenance (R4)]._

**15.1.1 Initial action instance**
* <div id="publish-box">(cc1) SHALL Who - Action Subject - Individual Subject of Care ID</div>
* <div id="publish-box">(cc2) SHALL Who - Accountable Health/care Party(ies), if applicable:</div>
* <div id="publish-box">(cc3) SHALL - Organization ID/Descriptor</div>
* <div id="publish-box">(cc4) SHALL - Business Unit ID/Descriptor</div>
* <div id="publish-box">(cc5) SHALL - Individual Healthcare Professional, Caregiver ID</div>
* (cc6) SHOULD - Role - relative to organization, business unit
* (cc7) SHOULD - Role - relative to Action Subject
* (cc8) SHOULD - Role - relative to action instance: e.g. perform, assist, observe
* (cc9) SHOULD - Scope of accountability
* <div id="publish-box">(cc10) SHALL What - Action taken, performed, rendered: Action Instance ID</div>
* <div id="publish-box">(cc11) SHALL What - Action status: e.g. pending, in progress, complete, cancelled</div>
* <div id="publish-box">(cc12) SHALL When - Action date/time, duration</div>
* <div id="publish-box">(cc13) SHALL Where - Action physical location: e.g. point of service/care</div>
* (cc14) SHOULD Why - rationale or purpose for action taken, if applicable

**15.1.2 Record lifecycle event - Originate/retain record entry instance(s)**
* <div id="publish-box">(cc1) SHALL Who - Record Entry Subject - Individual Subject of Care ID</div>
* <div id="publish-box">(cc2) SHALL Who - Accountable Health/care Party(ies), if applicable:</div>
* (cc3) SHOULD - Digital Signature
* <div id="publish-box">(cc4) SHALL - Organization ID/Descriptor</div>
* <div id="publish-box">(cc5) SHALL - Business Unit ID/Descriptor</div>
* <div id="publish-box">(cc6) SHALL - Individual Healthcare Professional, Caregiver ID</div>
* (cc7) SHOULD - Role - relative to organization, business unit
* (cc8) SHOULD - Role - relative to Record Entry Instance: e.g. author, scribe/proxy, verifier
* (cc9) SHOULD - Role - relative to individual author of content
* (cc10) SHOULD - Scope of accountability
* <div id="publish-box">(cc11) SHALL Who - Accountable Health/care Agent(s), if applicable:</div>
* (cc12) SHOULD - Digital Signature
* <div id="publish-box">(cc13) SHALL - Device, application or software ID</div>
* (cc14) SHOULD - Role - relative to Record Entry Instance: originator, source
* (cc15) SHOULD - Scope of accountability
* <div id="publish-box">(cc16) SHALL What - Action Instance ID</div>
* <div id="publish-box">(cc17) SHALL What - Record Entry Instance ID</div>
* <div id="publish-box">(cc18) SHALL What - Record Entry Lifecycle Event: originate</div>
* <div id="publish-box">(cc19) SHALL What - Record Entry instance status: e.g. new, updated, verified</div>
* <div id="publish-box">(cc20) SHALL What - Record Entry completion status: e.g. documented, dictated (pre-transcription), in progress, incomplete, pre-authenticated, authenticated, legally authenticated (ref: HL7)</div>
* <div id="publish-box">(cc21) SHALL When - Record Entry origination date/time</div>
* <div id="publish-box">(cc22) SHALL Where - Record Entry physical location, point of origination</div>
* <div id="publish-box">(cc23) SHALL Where - network address</div>
* (cc24) SHOULD Why - rationale or purpose for Record Entry origination

**15.2.1 Subsequent action instance**
* <div id="publish-box">(cc1) SHALL Who - Action Subject - Individual Subject of Care ID</div>
* <div id="publish-box">(cc2) SHALL Who - Accountable Health/care Party(ies), if applicable:</div>
* <div id="publish-box">(cc3) SHALL - Organization ID/Descriptor</div>
* <div id="publish-box">(cc4) SHALL - Business Unit ID/Descriptor</div>
* <div id="publish-box">(cc5) SHALL - Individual Healthcare Professional, Caregiver ID</div>
* (cc6) SHOULD - Role - relative to organization, business unit
* (cc7) SHOULD - Role - relative to Action Subject
* (cc8) SHOULD - Role - relative to action instance: e.g. perform, assist, observe
* (cc9) SHOULD - Scope of accountability
* <div id="publish-box">(cc10) SHALL What - Action taken, performed, rendered: Action Instance ID</div>
* <div id="publish-box">(cc11) SHALL What - Action status: e.g. pending, in progress, complete, cancelled</div>
* <div id="publish-box">(cc12) SHALL When - Action date/time, duration</div>
* <div id="publish-box">(cc13) SHALL Where - Action physical location: e.g. point of service/care</div>
* (cc14) SHOULD Why - rationale or purpose for action taken, if applicable

**15.2.2 Record lifecycle event - Amend (update) record entry instance(s)**
* <div id="publish-box">(cc1) SHALL Who - Record Entry Subject - Individual Subject of Care ID</div>
* <div id="publish-box">(cc2) SHALL Who - Accountable Health/care Party(ies), if applicable:</div>
* (cc3) SHOULD - Digital Signature
* <div id="publish-box">(cc4) SHALL - Organization ID/Descriptor</div>
* <div id="publish-box">(cc5) SHALL - Business Unit ID/Descriptor</div>
* <div id="publish-box">(cc6) SHALL - Individual Healthcare Professional, Caregiver ID</div>
* (cc7) SHOULD - Role - relative to organization, business unit
* (cc8) SHOULD - Role - relative to Record Entry Instance: e.g. author, scribe/proxy
* (cc9) SHOULD - Role - relative to individual author of content
* (cc10) SHOULD - Scope of accountability
* <div id="publish-box">(cc11) SHALL What - Action Instance ID</div>
* <div id="publish-box">(cc12) SHALL What - Record Entry Instance ID</div>
* <div id="publish-box">(cc13) SHALL What - Record Entry Lifecycle Event: update</div>
* <div id="publish-box">(cc14) SHALL What - Record Entry instance status: e.g. updated</div>
* <div id="publish-box">(cc15) SHALL What - Record Entry completion status</div>
* <div id="publish-box">(cc16) SHALL When - Record Entry update date/time</div>
* <div id="publish-box">(cc17) SHALL Where - Record Entry physical location, point of update</div>
* <div id="publish-box">(cc18) SHALL Where - network address</div>
* (cc19) SHOULD Why - rationale or purpose for Record Entry update

**15.9 Record lifecycle event - Receive/retain record entry instance(s)**
* <div id="publish-box">(cc1) SHALL Who - Record Entry Subject - Individual Subject of Care ID</div>
* <div id="publish-box">(cc2) SHALL Who - Source/Sender - Reporter, Discloser, Transmitter - Accountable Health/care Party(ies), if applicable:</div>
* <div id="publish-box">(cc3) SHALL - Organization ID/Descriptor</div>
* <div id="publish-box">(cc4) SHALL - Business Unit ID/Descriptor</div>
* <div id="publish-box">(cc5) SHALL - Individual Healthcare Professional, Caregiver ID</div>
* <div id="publish-box">(cc6) SHALL Who - Intended Recipient- Accountable Health/care Party(ies), if applicable:</div>
* <div id="publish-box">(cc7) SHALL - Organization ID/Descriptor</div>
* <div id="publish-box">(cc8) SHALL - Business Unit ID/Descriptor</div>
* <div id="publish-box">(cc9) SHALL - Individual Healthcare Professional, Caregiver ID</div>
* (cc10) SHOULD - Role - relative to organization, business unit
* (cc11) SHOULD - Role - relative to Record Entry Instance: e.g. recipient
* (cc12) SHOULD - Scope of accountability
* <div id="publish-box">(cc13) SHALL Who - Accountable Health/care Agent(s), if applicable:</div>
* (cc14) SHOULD - Digital Signature
* <div id="publish-box">(cc15) SHALL - Device, application or software ID</div>
* (cc16) SHOULD - Role - relative to Record Entry Instance: e.g. receiver
* (cc17) SHOULD - Scope of accountability 
* <div id="publish-box">(cc18) SHALL What - Action Instance ID</div>
* <div id="publish-box">(cc19) SHALL What - Record Entry Instance ID(s)</div>
* <div id="publish-box">(cc20) SHALL What - Record Entry Lifecycle Event: receipt</div>
* <div id="publish-box">(cc21) SHALL What - Record Entry instance status: e.g. received</div>
* <div id="publish-box">(cc22) SHALL What - Record Entry completion status: e.g. completed</div>
* <div id="publish-box">(cc23) SHALL When - Record Entry: e.g. date/time of receipt</div>
* <div id="publish-box">(cc24) SHALL Where - Record Entry physical location: e.g. point of receipt</div>
* <div id="publish-box">(cc25) SHALL Where - network address</div>
* (cc26) SHOULD Why - rationale or purpose for Record Entry receipt

**15.25 Record lifecycle event - Verify**
* <div id="publish-box">(cc1) SHALL Who - Record Entry Subject - Individual Subject of Care ID</div>
* <div id="publish-box">(cc2) SHALL Who - Accountable Health/care Party(ies), if applicable:</div>
* (cc3) SHOULD - Digital Signature
* <div id="publish-box">(cc4) SHALL - Organization ID/Descriptor</div>
* <div id="publish-box">(cc5) SHALL - Business Unit ID/Descriptor</div>
* <div id="publish-box">(cc6) SHALL - Individual Healthcare Professional, Caregiver ID</div>
* (cc7) SHOULD - Role - relative to organization, business unit
* (cc8) SHOULD - Role - relative to Record Entry Instance: e.g. verifier
* (cc9) SHOULD - Scope of accountability
* <div id="publish-box">(cc10) SHALL Who - Accountable Health/care Agent(s), if applicable:</div>
* (cc11) SHOULD - Digital Signature
* <div id="publish-box">(cc12) SHALL - Device, application or software ID</div>
* (cc13) SHOULD - Role - relative to Record Entry Instance: e.g. verifier
* (cc14) SHOULD - Scope of accountability
* <div id="publish-box">(cc15) SHALL What - Action Instance ID</div>
* <div id="publish-box">(cc16) SHALL What - Record Entry Instance ID</div>
* <div id="publish-box">(cc17) SHALL What - Record Entry Lifecycle Event: verify</div>
* <div id="publish-box">(cc18) SHALL What - Record Entry instance status: e.g. verified</div>
* <div id="publish-box">(cc19) SHALL What - Record Entry completion status: e.g. completed</div>
* <div id="publish-box">(cc20) SHALL When - Record Entry verification date/time</div>
* <div id="publish-box">(cc21) SHALL Where - Record Entry physical location, point of verification</div>
* <div id="publish-box">(cc22) SHALL Where - network address</div>
* (cc23) SHOULD Why - rationale or purpose for Record Entry verification

---

{% include link-list.md %}
