# Goal - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Goal**

## Logical Model: Goal 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/Goal | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:Goal |

 
A goal in the care plan. Possible relationship to concern, planned activity, performed activity, observation. 

**Usages:**

* Refer to this Logical Model: [Barrier](StructureDefinition-Barrier.md), [Outcome Review](StructureDefinition-OutcomeReview.md), [Planned Activity](StructureDefinition-PlannedActivity.md) and [Preference](StructureDefinition-Preference.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/Goal)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Goal.csv), [Excel](StructureDefinition-Goal.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Goal",
  "url" : "http://hl7.org/dam/StructureDefinition/Goal",
  "version" : "0.1.0",
  "name" : "Goal",
  "title" : "Goal",
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
  "description" : "A goal in the care plan. Possible relationship to concern, planned activity, performed activity, observation.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/dam/StructureDefinition/Goal",
  "baseDefinition" : "http://hl7.org/dam/StructureDefinition/CarePlanElement",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Goal",
        "path" : "Goal",
        "short" : "Goal",
        "definition" : "A goal in the care plan. Possible relationship to concern, planned activity, performed activity, observation."
      },
      {
        "id" : "Goal.composable",
        "path" : "Goal.composable",
        "short" : "Composable pattern properties",
        "definition" : "Composable pattern properties",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://hl7.org/dam/StructureDefinition/Composable"
          }
        ]
      },
      {
        "id" : "Goal.expressible",
        "path" : "Goal.expressible",
        "short" : "Expressible pattern properties",
        "definition" : "Expressible pattern properties",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://hl7.org/dam/StructureDefinition/Expressible"
          }
        ]
      },
      {
        "id" : "Goal.performable",
        "path" : "Goal.performable",
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
        "id" : "Goal.acknowledgeable",
        "path" : "Goal.acknowledgeable",
        "short" : "Acknowledgeable pattern properties",
        "definition" : "Acknowledgeable pattern properties",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://hl7.org/dam/StructureDefinition/Acknowledgeable"
          }
        ]
      },
      {
        "id" : "Goal.Priority",
        "path" : "Goal.Priority",
        "short" : "Priority pattern properties",
        "definition" : "Priority pattern properties",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://hl7.org/dam/StructureDefinition/Priority"
          }
        ]
      },
      {
        "id" : "Goal.revisable",
        "path" : "Goal.revisable",
        "short" : "Revisable pattern properties",
        "definition" : "Revisable pattern properties",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://hl7.org/dam/StructureDefinition/Revisable"
          }
        ]
      },
      {
        "id" : "Goal.desiredStateFinding",
        "path" : "Goal.desiredStateFinding",
        "short" : "Finding representing the desired state",
        "definition" : "Finding representing the desired state",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Goal.desiredStateMeasureDimension",
        "path" : "Goal.desiredStateMeasureDimension",
        "short" : "Dimension for measuring desired state",
        "definition" : "Dimension for measuring desired state",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Goal.desiredStateMeasureValue",
        "path" : "Goal.desiredStateMeasureValue",
        "short" : "Target value for the desired state",
        "definition" : "Target value for the desired state",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Goal.targetDateTime",
        "path" : "Goal.targetDateTime",
        "short" : "Target date for achieving the goal",
        "definition" : "Target date for achieving the goal",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Goal.description",
        "path" : "Goal.description",
        "short" : "Text description of the goal",
        "definition" : "Text description of the goal",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Goal.addresses",
        "path" : "Goal.addresses",
        "short" : "Concerns addressed by this goal",
        "definition" : "Concerns addressed by this goal",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/Concern"]
          }
        ]
      },
      {
        "id" : "Goal.basedOnGuideline",
        "path" : "Goal.basedOnGuideline",
        "short" : "Guidelines this goal is based on",
        "definition" : "Guidelines this goal is based on",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/Guideline"]
          }
        ]
      }
    ]
  }
}

```
