# Activity Execution - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Activity Execution**

## Logical Model: Activity Execution 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/ActivityExecution | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:ActivityExecution |

 
An execution of a planned activity 

**Usages:**

* Refer to this Logical Model: [Activity Outcome Observation](StructureDefinition-ActivityOutcomeObservation.md), [Care Delivery Resource](StructureDefinition-CareDeliveryResource.md) and [Outcome Review](StructureDefinition-OutcomeReview.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/ActivityExecution)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ActivityExecution.csv), [Excel](StructureDefinition-ActivityExecution.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ActivityExecution",
  "url" : "http://hl7.org/dam/StructureDefinition/ActivityExecution",
  "version" : "0.1.0",
  "name" : "ActivityExecution",
  "title" : "Activity Execution",
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
  "description" : "An execution of a planned activity",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/dam/StructureDefinition/ActivityExecution",
  "baseDefinition" : "http://hl7.org/dam/StructureDefinition/PlanElement",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "ActivityExecution",
        "path" : "ActivityExecution",
        "short" : "Activity Execution",
        "definition" : "An execution of a planned activity"
      },
      {
        "id" : "ActivityExecution.performable",
        "path" : "ActivityExecution.performable",
        "short" : "Performable pattern properties",
        "definition" : "Performable pattern properties",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://hl7.org/dam/StructureDefinition/Performable"
          }
        ]
      },
      {
        "id" : "ActivityExecution.kind",
        "path" : "ActivityExecution.kind",
        "short" : "Kind of activity execution",
        "definition" : "Kind of activity execution",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ActivityExecution.instantiates",
        "path" : "ActivityExecution.instantiates",
        "short" : "The planned activity being executed",
        "definition" : "The planned activity being executed",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/PlannedActivity"]
          }
        ]
      }
    ]
  }
}

```
