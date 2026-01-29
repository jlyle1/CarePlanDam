# Performance Status Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Performance Status Code System**

## CodeSystem: Performance Status Code System 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/CodeSystem/performance-status-cs | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:PerformanceStatusCS |

 
Codes for performance status of activities 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PerformanceStatusVS](ValueSet-performance-status-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "performance-status-cs",
  "url" : "http://hl7.org/dam/CodeSystem/performance-status-cs",
  "version" : "0.1.0",
  "name" : "PerformanceStatusCS",
  "title" : "Performance Status Code System",
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
  "description" : "Codes for performance status of activities",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "planned",
      "display" : "Planned",
      "definition" : "Activity is planned but not started"
    },
    {
      "code" : "in-process",
      "display" : "In Process",
      "definition" : "Activity is in process"
    },
    {
      "code" : "cancelled",
      "display" : "Cancelled",
      "definition" : "Activity was cancelled"
    },
    {
      "code" : "aborted",
      "display" : "Aborted",
      "definition" : "Activity was aborted"
    },
    {
      "code" : "completed",
      "display" : "Completed",
      "definition" : "Activity was completed"
    }
  ]
}

```
