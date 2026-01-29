# Activity Completion Status Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Activity Completion Status Code System**

## CodeSystem: Activity Completion Status Code System 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/CodeSystem/activity-completion-status-cs | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:ActivityCompletionStatusCS |

 
Codes for activity completion status 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ActivityCompletionStatusVS](ValueSet-activity-completion-status-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "activity-completion-status-cs",
  "url" : "http://hl7.org/dam/CodeSystem/activity-completion-status-cs",
  "version" : "0.1.0",
  "name" : "ActivityCompletionStatusCS",
  "title" : "Activity Completion Status Code System",
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
  "description" : "Codes for activity completion status",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "not-started",
      "display" : "Not Started",
      "definition" : "Activity has not started"
    },
    {
      "code" : "cancelled",
      "display" : "Cancelled",
      "definition" : "Activity was cancelled"
    },
    {
      "code" : "in-process",
      "display" : "In Process",
      "definition" : "Activity is in process"
    },
    {
      "code" : "stopped",
      "display" : "Stopped",
      "definition" : "Activity was stopped before completion"
    },
    {
      "code" : "completed",
      "display" : "Completed",
      "definition" : "Activity was completed"
    }
  ]
}

```
