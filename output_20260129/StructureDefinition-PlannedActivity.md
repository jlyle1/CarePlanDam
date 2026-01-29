# Planned Activity - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Planned Activity**

## Logical Model: Planned Activity 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/PlannedActivity | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:PlannedActivity |

 
An activity planned as part of the care plan 

**Usages:**

* Refer to this Logical Model: [Activity Execution](StructureDefinition-ActivityExecution.md), [Barrier](StructureDefinition-Barrier.md), [Preference](StructureDefinition-Preference.md) and [Protective Factor](StructureDefinition-ProtectiveFactor.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/PlannedActivity)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PlannedActivity.csv), [Excel](StructureDefinition-PlannedActivity.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PlannedActivity",
  "url" : "http://hl7.org/dam/StructureDefinition/PlannedActivity",
  "version" : "0.1.0",
  "name" : "PlannedActivity",
  "title" : "Planned Activity",
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
  "description" : "An activity planned as part of the care plan",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/dam/StructureDefinition/PlannedActivity",
  "baseDefinition" : "http://hl7.org/dam/StructureDefinition/PlanElement",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "PlannedActivity",
        "path" : "PlannedActivity",
        "short" : "Planned Activity",
        "definition" : "An activity planned as part of the care plan"
      },
      {
        "id" : "PlannedActivity.composable",
        "path" : "PlannedActivity.composable",
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
        "id" : "PlannedActivity.acknowledgeable",
        "path" : "PlannedActivity.acknowledgeable",
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
        "id" : "PlannedActivity.prioritizable",
        "path" : "PlannedActivity.prioritizable",
        "short" : "Prioritizable pattern properties",
        "definition" : "Prioritizable pattern properties",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://hl7.org/dam/StructureDefinition/Prioritizable"
          }
        ]
      },
      {
        "id" : "PlannedActivity.revisable",
        "path" : "PlannedActivity.revisable",
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
        "id" : "PlannedActivity.targetPeriod",
        "path" : "PlannedActivity.targetPeriod",
        "short" : "Target time period for the activity",
        "definition" : "Target time period for the activity",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "PlannedActivity.activity",
        "path" : "PlannedActivity.activity",
        "short" : "The activity to be performed",
        "definition" : "The activity to be performed",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "PlannedActivity.classification",
        "path" : "PlannedActivity.classification",
        "short" : "Classification of the activity",
        "definition" : "Classification of the activity",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "PlannedActivity.targetFrequency",
        "path" : "PlannedActivity.targetFrequency",
        "short" : "Target frequency of the activity",
        "definition" : "Target frequency of the activity",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "PlannedActivity.preCondition",
        "path" : "PlannedActivity.preCondition",
        "short" : "Preconditions for the activity",
        "definition" : "Preconditions for the activity",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "PlannedActivity.postCondition",
        "path" : "PlannedActivity.postCondition",
        "short" : "Expected postconditions",
        "definition" : "Expected postconditions",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "PlannedActivity.supportingContent",
        "path" : "PlannedActivity.supportingContent",
        "short" : "Supporting content or instructions",
        "definition" : "Supporting content or instructions",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "PlannedActivity.needs",
        "path" : "PlannedActivity.needs",
        "short" : "Resources needed",
        "definition" : "Resources needed",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/ResourceRequirement"]
          }
        ]
      },
      {
        "id" : "PlannedActivity.supports",
        "path" : "PlannedActivity.supports",
        "short" : "Goals this activity supports",
        "definition" : "Goals this activity supports",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/Goal"]
          }
        ]
      },
      {
        "id" : "PlannedActivity.mitigatesRisk",
        "path" : "PlannedActivity.mitigatesRisk",
        "short" : "Health risks mitigated",
        "definition" : "Health risks mitigated",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/HealthRisk"]
          }
        ]
      },
      {
        "id" : "PlannedActivity.presentsRisk",
        "path" : "PlannedActivity.presentsRisk",
        "short" : "Health risks presented by this activity",
        "definition" : "Health risks presented by this activity",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/HealthRisk"]
          }
        ]
      },
      {
        "id" : "PlannedActivity.basedOnGuideline",
        "path" : "PlannedActivity.basedOnGuideline",
        "short" : "Guidelines this activity is based on",
        "definition" : "Guidelines this activity is based on",
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
