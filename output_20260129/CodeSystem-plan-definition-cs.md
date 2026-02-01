# Plan Definition Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Plan Definition Code System**

## CodeSystem: Plan Definition Code System 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/CodeSystem/plan-definition-cs | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:CarePlanDefinitionCS |

 
Codes for types of plan definitions 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CarePlanDefinitionVS](ValueSet-plan-definition-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "plan-definition-cs",
  "url" : "http://hl7.org/dam/CodeSystem/plan-definition-cs",
  "version" : "0.1.0",
  "name" : "CarePlanDefinitionCS",
  "title" : "Plan Definition Code System",
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
  "description" : "Codes for types of plan definitions",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "c-cda-4-care-plan",
      "display" : "C-CDA 4.0 Care Plan",
      "definition" : "C-CDA 4.0 Care Plan specification"
    },
    {
      "code" : "pharmacist",
      "display" : "Pharmacist",
      "definition" : "Pharmacist care plan"
    },
    {
      "code" : "ada-diabetes-2025",
      "display" : "ADA Diabetes Standard of Care 2025",
      "definition" : "ADA Diabetes Standard of Care 2025"
    }
  ]
}

```
