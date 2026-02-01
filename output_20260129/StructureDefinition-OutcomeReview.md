# Outcome Review - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Outcome Review**

## Logical Model: Outcome Review 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/OutcomeReview | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:OutcomeReview |

 
A review assessing outcomes of performable elements 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/OutcomeReview)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-OutcomeReview.csv), [Excel](StructureDefinition-OutcomeReview.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "OutcomeReview",
  "url" : "http://hl7.org/dam/StructureDefinition/OutcomeReview",
  "version" : "0.1.0",
  "name" : "OutcomeReview",
  "title" : "Outcome Review",
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
  "description" : "A review assessing outcomes of performable elements",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/dam/StructureDefinition/OutcomeReview",
  "baseDefinition" : "http://hl7.org/dam/StructureDefinition/CarePlanElement",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "OutcomeReview",
        "path" : "OutcomeReview",
        "short" : "Outcome Review",
        "definition" : "A review assessing outcomes of performable elements"
      },
      {
        "id" : "OutcomeReview.review",
        "path" : "OutcomeReview.review",
        "short" : "Review pattern properties",
        "definition" : "Review pattern properties",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://hl7.org/dam/StructureDefinition/Review"
          }
        ]
      },
      {
        "id" : "OutcomeReview.outcome",
        "path" : "OutcomeReview.outcome",
        "short" : "The assessed outcome",
        "definition" : "The assessed outcome",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/dam/ValueSet/outcome-vs"
        }
      },
      {
        "id" : "OutcomeReview.criterion",
        "path" : "OutcomeReview.criterion",
        "short" : "Criterion used for assessment",
        "definition" : "Criterion used for assessment",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "OutcomeReview.assesses",
        "path" : "OutcomeReview.assesses",
        "short" : "Performable elements assessed",
        "definition" : "Performable elements assessed",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/Performable"]
          }
        ]
      },
      {
        "id" : "OutcomeReview.supportsGoal",
        "path" : "OutcomeReview.supportsGoal",
        "short" : "Goals supported by this outcome",
        "definition" : "Goals supported by this outcome",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/Goal"]
          }
        ]
      },
      {
        "id" : "OutcomeReview.referencesExecution",
        "path" : "OutcomeReview.referencesExecution",
        "short" : "Activity executions referenced",
        "definition" : "Activity executions referenced",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/ActivityExecution"]
          }
        ]
      },
      {
        "id" : "OutcomeReview.referencesObservation",
        "path" : "OutcomeReview.referencesObservation",
        "short" : "Observations referenced",
        "definition" : "Observations referenced",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/dam/StructureDefinition/ActivityOutcomeObservation"
            ]
          }
        ]
      }
    ]
  }
}

```
