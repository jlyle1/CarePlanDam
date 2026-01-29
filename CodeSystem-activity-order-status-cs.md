# Activity Order Status Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Activity Order Status Code System**

## CodeSystem: Activity Order Status Code System 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/CodeSystem/activity-order-status-cs | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:ActivityOrderStatusCS |

 
Codes for activity order status 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ActivityOrderStatusVS](ValueSet-activity-order-status-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "activity-order-status-cs",
  "url" : "http://hl7.org/dam/CodeSystem/activity-order-status-cs",
  "version" : "0.1.0",
  "name" : "ActivityOrderStatusCS",
  "title" : "Activity Order Status Code System",
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
  "description" : "Codes for activity order status",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "not-orderable",
      "display" : "Not Orderable",
      "definition" : "Activity cannot be ordered"
    },
    {
      "code" : "not-ordered",
      "display" : "Not Ordered",
      "definition" : "Activity has not been ordered"
    },
    {
      "code" : "ordered",
      "display" : "Ordered",
      "definition" : "Activity has been ordered"
    }
  ]
}

```
