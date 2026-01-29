# Decision Mode Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Decision Mode Code System**

## CodeSystem: Decision Mode Code System 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/CodeSystem/decision-mode-cs | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:DecisionModeCS |

 
Codes for how decisions are made 

 This Code system is referenced in the content logical definition of the following value sets: 

* [DecisionModeVS](ValueSet-decision-mode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "decision-mode-cs",
  "url" : "http://hl7.org/dam/CodeSystem/decision-mode-cs",
  "version" : "0.1.0",
  "name" : "DecisionModeCS",
  "title" : "Decision Mode Code System",
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
  "description" : "Codes for how decisions are made",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "explicit",
      "display" : "Explicit",
      "definition" : "Decision was made explicitly"
    },
    {
      "code" : "inherited",
      "display" : "Inherited",
      "definition" : "Decision was inherited from another element"
    },
    {
      "code" : "contextual",
      "display" : "Contextual",
      "definition" : "Decision was derived from context"
    }
  ]
}

```
