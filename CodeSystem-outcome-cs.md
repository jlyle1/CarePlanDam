# Outcome Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Outcome Code System**

## CodeSystem: Outcome Code System 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/CodeSystem/outcome-cs | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:OutcomeCS |

 
Codes for outcome assessment 

 This Code system is referenced in the content logical definition of the following value sets: 

* [OutcomeVS](ValueSet-outcome-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "outcome-cs",
  "url" : "http://hl7.org/dam/CodeSystem/outcome-cs",
  "version" : "0.1.0",
  "name" : "OutcomeCS",
  "title" : "Outcome Code System",
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
  "description" : "Codes for outcome assessment",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [
    {
      "code" : "resolved",
      "display" : "Resolved",
      "definition" : "The condition or issue has been resolved"
    },
    {
      "code" : "improved",
      "display" : "Improved",
      "definition" : "The condition or issue has improved"
    },
    {
      "code" : "stabilized",
      "display" : "Stabilized",
      "definition" : "The condition or issue has stabilized"
    },
    {
      "code" : "in-process",
      "display" : "In Process",
      "definition" : "The intervention is still in process"
    },
    {
      "code" : "maintained",
      "display" : "Maintained",
      "definition" : "The current state has been maintained"
    },
    {
      "code" : "deteriorated",
      "display" : "Deteriorated",
      "definition" : "The condition or issue has deteriorated"
    }
  ]
}

```
