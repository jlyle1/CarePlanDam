# Plan Purpose Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Plan Purpose Code System**

## CodeSystem: Plan Purpose Code System 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/CodeSystem/plan-purpose-cs | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:PlanPurposeCS |

 
Codes for care plan purposes 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PlanPurposeVS](ValueSet-plan-purpose-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "plan-purpose-cs",
  "url" : "http://hl7.org/dam/CodeSystem/plan-purpose-cs",
  "version" : "0.1.0",
  "name" : "PlanPurposeCS",
  "title" : "Plan Purpose Code System",
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
  "description" : "Codes for care plan purposes",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "diabetes-mellitus",
      "display" : "Diabetes Mellitus",
      "definition" : "Care plan for diabetes mellitus management"
    },
    {
      "code" : "cardiac",
      "display" : "Cardiac",
      "definition" : "Care plan for cardiac conditions"
    },
    {
      "code" : "home-health-care",
      "display" : "Home Health Care",
      "definition" : "Care plan for home health care"
    }
  ]
}

```
