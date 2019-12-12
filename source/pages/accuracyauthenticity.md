---
title: Accuracy and Authenticity
layout: default
active: guidance
topofpage: true
r4: http://hl7.org/fhir/R4/
us_r4: http://hl7.org/fhir/us/core/
---

This section outlines foundational Accuracy and Authenticity requirements common to all Skin Wound Assessment actors used in this guide. At this time the underlying rationale references U.S. domain legal processes and law along with more universal references in Data Quality. Pending assessment against other legal domains, users may consider this IG to be U.S. centric unless their own assessments prove otherwise.

The conformance verbs used are defined in the [FHIR Conformance Rules].

---

<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->
**Contents**

* Do not remove this line (it will not be displayed)
{:toc}

---

<!-- end TOC -->

## Background / context

"Accuracy" and "Authenticity" each have many colloquial definitions. In the context of a technical specification such as this FHIR IG, greater specificity is required in order to achieve the overarching goal of "fitness for use" in a production environment. This is especially important in a healthcare production environment where in some, but not all end-uses, meticulousness extending to Critical Systems Engineering principles may apply. Therefore, in the context of this FHIR IG an operational definition for Accuracy necessitates accommodation for varying end-uses with different associated tolerance for variances in data quality.

Overarching Data Quality principles provide such accommodation. For example, "Data quality is defined as follows: data has quality if it satisfies the requirements of its intended use... In other words, data quality depends as much on the intended use as on the data itself. To satisfy the intended use, the data must be accurate, timely, relevant, complete, understood, and trusted."<sup>[1](#aafootnote1)</sup>  Conceptual models for verifying data quality, capturing the end-use specification dependency, employ the terms "fitness for use" or "fit for use", for example, "DQ checks are generally utilized for determining whether or not the data available is appropriate for particular tasks, also described as "fit-for-use"<sup>[2](#aafootnote2)</sup>.

This specification-dependent, "fit for use" dependent approach is incorporated in this FHIR IG in this form: Accuracy, in production, requires an end-use specification that defines all parameters deemed necessary for each end use. The gradation of "accuracy" then becomes a conformance test, comparing a given data object purporting to conform with a defined specification with that exact specification, including that object means (per the specification) of proving that conformance.

This latter statement defines, as per U.S. domain legal process and law<sup>[3](#aafootnote3)</sup>, authenticity:
1. What does the object provider purport the object to be?
2. What is the specification for that object?
3. What means are offered to verify that 1=2?<sup>[4](#aafootnote4)</sup>

This FHIR IG models an initial framework for defining conformance with an identified accuracy specification with sufficient detail to support an independent verification schema, either in testing or in production. One inspiration for this approach has been the imaginative use of tools like Schematron, initially used to test and verify CDA encoding, now adapted for use in production systems' conformance reporting. Additionally, there now exists on-line and downloadable testing tools to verify FHIR specification conformance.

Since EHRs are currently not held accountable to any substantive data quality requirements, such as support for Generally Accepted Accounting Principles<sup>[5](#aafootnote5)</sup> or Generally Accepted Records Principles<sup>[6](#aafootnote6)</sup>, data quality assurance requires that any given data source must be evaluated for its competency to meet end-use specifications and then each output must be evaluated for the full employment of source competency in each instance of output fabrication.  Intermediate transport actors must be assessed as well<sup>[7](#aafootnote7)</sup>. This, of course, is a horrendous burden that resulted from long-past decisions to deploy EHRs without meaningful stipulations for minimum necessary data quality competence. Fortunately US healthcare is accustomed to variances in data quality in healthcare information and so intermediate measures, such as trust agreements between point-to-point exchange partners. Over time, we anticipate that competitive pressures will drive data quality requirements into EHRs as necessary for care safety, efficacy, and efficiency. This FHIR IG constitutes a test of concept for a developmental framework to expedite that competition.

<br />

## Accuracy

Accuracy definition for the purposes of this FHIR IG: Accuracy is a property of a production data set insofar as it conforms with a given end-use specification for that data set. (Corollary 1: If there is no specification for determining "accuracy" for a given data object, then there can be no determination of accuracy. Corollary 2: If there is no defined end-use or end-user, or a statement pertaining to end use, then there can be no determination of accuracy.)

<br />

## Authenticity

Authenticity definition for the purpose of this FHIR IG: Authenticity is a property of a data object, its presence or absence determined by passing or failing conformance testing against a defined specification for that exact object. A data object has authenticity insofar as it is what it purports to be per a specification (including conformance with the specification's proofing regime). Derivative terms: Authentic = This object has been validated as conformant with the &laquo; *named* &raquo; IG specification and therefore deemed an authentic, named &laquo; *data object* &raquo; per the specification.

<br />

## Summary

The WATT FHIR IG is the selected Research and Development path for modeling Accuracy and Authenticity in accordance with existing (and evolving) FHIR development processes, to expedite its nascent utility for supporting practical, implementable, verifiable end-to-end trust constructs. The Skin Wound Assessment and Treatment Template originated within an EHR Systems Workgroup PSS with extensive interest and support from the Podiatry community, including practicing clinicians, EHR vendors, risk insurers, and its professional society. It also references extensive Wound Assessment work resourced from the Agency for Healthcare Research and Quality (AHRQ) and CIMI's work on Wound Assessment for clinical content attributes. The work also benefits from the recent interest and inputs from entities developing specifications for Prior Authorization and for Attachments. (Please see the [Podiatry PSS Confluence page](https://confluence.hl7.org/display/CIC/Skin+and+Wound+PSS) for curated references.)

This FHIR IG begins to address a foundational requirement for end-to-end trust, which is to provide means for a given end-user to create a specification for data quality that verifiably meets their data definition of "fit for use". It has a number of dependencies, some of which are evolving in real time, including rigorous adherence to Role-Based Access Controls (RBAC), the normalization of provenance that is verifiably also "fit for use", conformance with rigorous audit function specifications (Ex: ASTM E2147-18), and the future development of nomenclature and naming conventions for a library of end-use defined Accuracy/Authenticity (A/A) Specifications.

<br />

## Ongoing Development

Current participants recognize (and experience) the burdens and harms of data quality assurance failures aka untrustworthy clinical data and records. EHRs, on the whole, have set aside data quality as a systems requirement.  More importantly, those EHRs that have supported data quality assurance support are invisible in the marketplace without test specifications. Those test specifications for data quality constructs require defining and refining use of "Accuracy" and "Authenticity" in terms with sufficient specificity to translate into system design specifications. Those specifications, as in all other industries, must be designed for testing as a precondition to continuous improvement. While this FHIR IG represents that work, it will take years to evolve the current IT base towards sufficient A/A competency to verifiably meet end-user's "fit for use" requirements. As the research, development, and uptake for this work increasingly connects with others invested in assuring accurate data and authentic records, an energetic and rewarding development path is expected.

The FHIR IG process and its testing in sequential Connectathons provide one such path. We also intend for Connectathons to provide a means to increase effective collaboration with related projects that will contribute to and benefit from incremental expansion of A/A attributes instantiation.

<br />

**Footnotes**

<p><a name="aafootnote1"><sup>1</sup></a><small>Olsen, Jack E., <span style="text-decoration: underline">Data Quality: The Accuracy Dimension</span>, Morgan Kaufmann Publishers, San Francisco, CA, 2003, p. 24</small></p>
<p><a name="aafootnote2"><sup>2</sup></a><small>Kahn, MG, Raebel, MA, Glanz, JM, Riedlinger, K and Steiner, JF. A Pragmatic Framework for Single-site and Multisite Data Quality Assessment in Electronic Health Record-based Clinical Research. Med Care. 2012; 50. DOI: <a href="https://doi.org/10.1097/MLR.0b013e318257dd67">https://doi.org/10.1097/MLR.0b013e318257dd67</a> as cited in Rogers, JR, et al. 2019 A Data Element-Function Conceptual Model for Data Quality Checks. eGEMs (Generating Evidence &amp; Methods to improve patient outcomes), 7(1): 17, pp. 1-14. DOI: <a href="https://doi.org/10.5334/egems.289">https://doi.org/10.5334/egems.289</a>, p. 9 of 14.</small></p>
<p><a name="aafootnote3"><sup>3</sup></a><small>Note the caveat in 3.1 above, that only U.S. domain references have, so far, been reviewed and referenced to support this operational definition of "authenticity". Within that constraint, this approach has support as noted in footnote <a href="#aafootnote4"><sup>4</sup></a>. U.S.law generally references current knowledge in relevant subject matter areas but research on this point hasn't yet been completed.</small></p>
<p><a name="aafootnote4"><sup>4</sup></a><small>"Authentic" means "[g]enuine; true; having the character and authority of an original; duly vested with all necessary formalities and legally attested; competent, credible, and reliable as evidence." Evidence is required "sufficient to support a finding that the item is what the proponent claims it is."</small></p>
<p><small>&nbsp;&nbsp;&nbsp;&nbsp;Therefore, authenticity has three parts:<br/>
&nbsp;&nbsp;&nbsp;&nbsp;<b>1. For what purpose is the record offered?</b><br/>
&nbsp;&nbsp;&nbsp;&nbsp;<b>2. Is the record what it claims to be?</b><br/>
&nbsp;&nbsp;&nbsp;&nbsp;<b>3. What evidence authenticates the reliability of the record's claim?</b><br/>
&nbsp;&nbsp;&nbsp;&nbsp;P. 233  in <a href="https://s3.amazonaws.com/IGG/publications/EHR.TSC.Vol18.rev.pdf">https://s3.amazonaws.com/IGG/publications/EHR.TSC.Vol18.rev.pdf</a>, referencing "Authentic", L.DICTIONARY, <a href="http://thelawdictionary.org/authentic">http://thelawdictionary.org/authentic</a> (last visited June 9, 2017) (citing Downing v. Brown, 3 Colo. 590 (1877)), and referencing FED.R.EVID.901(a) ("To satisfy the requirement of authenticating or identifying an item of evidence, the proponent must produce evidence sufficient to support a finding that the item is what the proponent claims it is.").</small></p>
<p><a name="aafootnote5"><sup>5</sup></a><small>GAAP as curated by Financial Accounting Standards Board (FASB)&reg; see <a href="https://www.fasb.org/home">https://www.fasb.org/home</a></small></p>
<p><a name="aafootnote6"><sup>6</sup></a><small>GARP&reg; as curated by ARMA, see <a href="https://www.arma.org/page/principles">https://www.arma.org/page/principles</a></small></p>
<p><a name="aafootnote7"><sup>7</sup></a><small>Note that laboratory device data provides an example of both problem and solution, insofar as regulation and regular testing of laboratory devices, plus CLIA rules for exchange, demonstrate substantial success in data quality assurance and, thereby, trustworthiness. Profession-driven data normalization, as performed by the American Society of Anethesiology (ASA) in the late 1990's, plus the cooperation of Anesthesiology Information Management (AIM) systems vendors, provide another example of a success pathway.</small></p>

<br />

---

{% include link-list.md %}
