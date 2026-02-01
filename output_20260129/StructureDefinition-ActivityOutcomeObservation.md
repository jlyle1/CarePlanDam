# Activity Outcome Observation - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Activity Outcome Observation**

## Logical Model: Activity Outcome Observation 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/ActivityOutcomeObservation | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:ActivityOutcomeObservation |

 
An observation characterizing the outcome of an activity execution 

**Usages:**

* Refer to this Logical Model: [Outcome Review](StructureDefinition-OutcomeReview.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/ActivityOutcomeObservation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ActivityOutcomeObservation.csv), [Excel](StructureDefinition-ActivityOutcomeObservation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ActivityOutcomeObservation",
  "url" : "http://hl7.org/dam/StructureDefinition/ActivityOutcomeObservation",
  "version" : "0.1.0",
  "name" : "ActivityOutcomeObservation",
  "title" : "Activity Outcome Observation",
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
  "description" : "An observation characterizing the outcome of an activity execution",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/dam/StructureDefinition/ActivityOutcomeObservation",
  "baseDefinition" : "http://hl7.org/dam/StructureDefinition/CarePlanElement",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "ActivityOutcomeObservation",
        "path" : "ActivityOutcomeObservation",
        "short" : "Activity Outcome Observation",
        "definition" : "An observation characterizing the outcome of an activity execution"
      },
      {
        "id" : "ActivityOutcomeObservation.performable",
        "path" : "ActivityOutcomeObservation.performable",
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
        "id" : "ActivityOutcomeObservation.propertyAssessed",
        "path" : "ActivityOutcomeObservation.propertyAssessed",
        "short" : "Property being assessed",
        "definition" : "Property being assessed",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ActivityOutcomeObservation.result",
        "path" : "ActivityOutcomeObservation.result",
        "short" : "Result of the observation",
        "definition" : "Result of the observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ActivityOutcomeObservation.method",
        "path" : "ActivityOutcomeObservation.method",
        "short" : "Method of observation",
        "definition" : "Method of observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ActivityOutcomeObservation.characterizes",
        "path" : "ActivityOutcomeObservation.characterizes",
        "short" : "Activity execution being characterized",
        "definition" : "Activity execution being characterized",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/ActivityExecution"]
          }
        ]
      }
    ]
  }
}

```
