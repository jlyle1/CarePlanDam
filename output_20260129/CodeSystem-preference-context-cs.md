# Preference Context Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Preference Context Code System**

## CodeSystem: Preference Context Code System 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/CodeSystem/preference-context-cs | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:PreferenceContextCS |

 
Codes for preference contexts 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PreferenceContextVS](ValueSet-preference-context-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "preference-context-cs",
  "url" : "http://hl7.org/dam/CodeSystem/preference-context-cs",
  "version" : "0.1.0",
  "name" : "PreferenceContextCS",
  "title" : "Preference Context Code System",
  "status" : "active",
  "date" : "2026-01-29T10:40:38-05:00",
  "publisher" : "Patient Care WG",
  "contact" : [
    {
      "name" : "Patient Care WG",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.hl7.org/Special/committees/patientcare"
        }
      ]
    }
  ],
  "description" : "Codes for preference contexts",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [
    {
      "code" : "visitation",
      "display" : "Visitation",
      "definition" : "Preferences about visitation"
    },
    {
      "code" : "diet",
      "display" : "Diet",
      "definition" : "Dietary preferences"
    },
    {
      "code" : "medication",
      "display" : "Medication",
      "definition" : "Medication preferences"
    },
    {
      "code" : "treatment",
      "display" : "Treatment",
      "definition" : "Treatment preferences"
    },
    {
      "code" : "discharge-planning",
      "display" : "Discharge Planning",
      "definition" : "Discharge planning preferences"
    },
    {
      "code" : "care",
      "display" : "Care",
      "definition" : "General care preferences"
    }
  ]
}

```
