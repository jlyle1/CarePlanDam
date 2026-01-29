# Communication - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Communication**

## Logical Model: Communication 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/Communication | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:Communication |

 
A communication event related to the care plan 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/Communication)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Communication.csv), [Excel](StructureDefinition-Communication.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Communication",
  "url" : "http://hl7.org/dam/StructureDefinition/Communication",
  "version" : "0.1.0",
  "name" : "Communication",
  "title" : "Communication",
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
  "description" : "A communication event related to the care plan",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/dam/StructureDefinition/Communication",
  "baseDefinition" : "http://hl7.org/dam/StructureDefinition/PlanElement",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Communication",
        "path" : "Communication",
        "short" : "Communication",
        "definition" : "A communication event related to the care plan"
      },
      {
        "id" : "Communication.time",
        "path" : "Communication.time",
        "short" : "When the communication occurred",
        "definition" : "When the communication occurred",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Communication.content",
        "path" : "Communication.content",
        "short" : "Content of the communication",
        "definition" : "Content of the communication",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "base64Binary"
          }
        ]
      },
      {
        "id" : "Communication.topic",
        "path" : "Communication.topic",
        "short" : "Topic of the communication",
        "definition" : "Topic of the communication",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Communication.refersToElements",
        "path" : "Communication.refersToElements",
        "short" : "Plan elements referenced in this communication",
        "definition" : "Plan elements referenced in this communication",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/PlanElement"]
          }
        ]
      },
      {
        "id" : "Communication.communicationAuthor",
        "path" : "Communication.communicationAuthor",
        "short" : "Who authored the communication",
        "definition" : "Who authored the communication",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/CareTeamMember"]
          }
        ]
      },
      {
        "id" : "Communication.recipient",
        "path" : "Communication.recipient",
        "short" : "Recipients of the communication",
        "definition" : "Recipients of the communication",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/CareTeamMember"]
          }
        ]
      },
      {
        "id" : "Communication.thread",
        "path" : "Communication.thread",
        "short" : "Thread this communication belongs to",
        "definition" : "Thread this communication belongs to",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/CommunicationThread"]
          }
        ]
      }
    ]
  }
}

```
