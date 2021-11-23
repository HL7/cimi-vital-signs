---
title: Profiles and Extensions
layout: default
active: profiles
---
### Profiles

The following Profiles and have been defined for this implementation guide.

{% include profilesTable.html %}

### Extensions

The following extensions have been defined as part of the Vital Signs implementation Guide. A [registry of standard extensions]({{site.data.fhir.path}}extensibility-registry.html) can be found in the FHIR specification and additional extensions may be registered on the HL7 FHIR registry at http://hl7.org/fhir/registry.

#### A note about value bindings in the extensions

Some of the extensions defined below do not have value set bindings included.  This is because the extension may be used in more than one profile and the values needed are specific to the context of the containing profile.  For example the Associated Situation extension is used in both the Body Temperature profile as well as the Body Weight profile.  The values for Associated Situation will differ between these two contexts.  For Body Temperature the values are things like "post exercise" but for Body Weight they're things like "With prosthetic" or "undressed".

{% include extensionsTable.html %}

{% include link-list.md %}