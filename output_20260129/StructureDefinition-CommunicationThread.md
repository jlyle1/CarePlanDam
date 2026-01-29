# Communication Thread - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Communication Thread**

## Logical Model: Communication Thread 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/CommunicationThread | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:CommunicationThread |

 
A thread of related communications 

**Usages:**

* Refer to this Logical Model: [Communication](StructureDefinition-Communication.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/CommunicationThread)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CommunicationThread.csv), [Excel](StructureDefinition-CommunicationThread.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CommunicationThread",
  "url" : "http://hl7.org/dam/StructureDefinition/CommunicationThread",
  "version" : "0.1.0",
  "name" : "CommunicationThread",
  "title" : "Communication Thread",
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
  "description" : "A thread of related communications",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/dam/StructureDefinition/CommunicationThread",
  "baseDefinition" : "http://hl7.org/dam/StructureDefinition/PlanElement",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "CommunicationThread",
        "path" : "CommunicationThread",
        "short" : "Communication Thread",
        "definition" : "A thread of related communications"
      },
      {
        "id" : "CommunicationThread.topic",
        "path" : "CommunicationThread.topic",
        "short" : "Topic of the thread",
        "definition" : "Topic of the thread",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
