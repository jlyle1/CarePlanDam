# Acknowledgement Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Acknowledgement Code System**

## CodeSystem: Acknowledgement Code System 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/CodeSystem/acknowledgement-cs | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:AcknowledgementCS |

 
Codes for acknowledgment decisions 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AcknowledgementVS](ValueSet-acknowledgement-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "acknowledgement-cs",
  "url" : "http://hl7.org/dam/CodeSystem/acknowledgement-cs",
  "version" : "0.1.0",
  "name" : "AcknowledgementCS",
  "title" : "Acknowledgement Code System",
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
  "description" : "Codes for acknowledgment decisions",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "acknowledge",
      "display" : "Acknowledge",
      "definition" : "Acknowledges the element without agreement or disagreement"
    },
    {
      "code" : "assert",
      "display" : "Assert",
      "definition" : "Asserts the element as true or valid"
    },
    {
      "code" : "agree",
      "display" : "Agree",
      "definition" : "Agrees with the element"
    },
    {
      "code" : "disagree",
      "display" : "Disagree",
      "definition" : "Disagrees with the element"
    }
  ]
}

```
