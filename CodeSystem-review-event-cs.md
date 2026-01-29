# Review Event Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Review Event Code System**

## CodeSystem: Review Event Code System 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/CodeSystem/review-event-cs | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:ReviewEventCS |

 
Codes for events that trigger reviews 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ReviewEventVS](ValueSet-review-event-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "review-event-cs",
  "url" : "http://hl7.org/dam/CodeSystem/review-event-cs",
  "version" : "0.1.0",
  "name" : "ReviewEventCS",
  "title" : "Review Event Code System",
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
  "description" : "Codes for events that trigger reviews",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "creation",
      "display" : "Creation",
      "definition" : "Review triggered by creation of an element"
    },
    {
      "code" : "periodic",
      "display" : "Periodic",
      "definition" : "Review triggered by periodic schedule"
    },
    {
      "code" : "caused",
      "display" : "Caused",
      "definition" : "Review triggered by a specific cause or event"
    }
  ]
}

```
