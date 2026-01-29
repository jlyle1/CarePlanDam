# Care Plan Manifestation - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Care Plan Manifestation**

## Logical Model: Care Plan Manifestation 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/CarePlanManifestation | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:CarePlanManifestation |

 
A manifestation of a care plan - a specific instance of a care plan at a point in time 

**Usages:**

* Refer to this Logical Model: [Organization](StructureDefinition-Organization.md), [Plan Element](StructureDefinition-PlanElement.md) and [Reconciliation Log](StructureDefinition-ReconciliationLog.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/CarePlanManifestation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CarePlanManifestation.csv), [Excel](StructureDefinition-CarePlanManifestation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CarePlanManifestation",
  "url" : "http://hl7.org/dam/StructureDefinition/CarePlanManifestation",
  "version" : "0.1.0",
  "name" : "CarePlanManifestation",
  "title" : "Care Plan Manifestation",
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
  "description" : "A manifestation of a care plan - a specific instance of a care plan at a point in time",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/dam/StructureDefinition/CarePlanManifestation",
  "baseDefinition" : "http://hl7.org/dam/StructureDefinition/PlanElement",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "CarePlanManifestation",
        "path" : "CarePlanManifestation",
        "short" : "Care Plan Manifestation",
        "definition" : "A manifestation of a care plan - a specific instance of a care plan at a point in time"
      },
      {
        "id" : "CarePlanManifestation.acknowledgeable",
        "path" : "CarePlanManifestation.acknowledgeable",
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
        "id" : "CarePlanManifestation.performable",
        "path" : "CarePlanManifestation.performable",
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
        "id" : "CarePlanManifestation.revisable",
        "path" : "CarePlanManifestation.revisable",
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
        "id" : "CarePlanManifestation.composable",
        "path" : "CarePlanManifestation.composable",
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
        "id" : "CarePlanManifestation.createDate",
        "path" : "CarePlanManifestation.createDate",
        "short" : "Date the manifestation was created",
        "definition" : "Date the manifestation was created",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "CarePlanManifestation.specificationType",
        "path" : "CarePlanManifestation.specificationType",
        "short" : "Type of specification",
        "definition" : "Type of specification",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/dam/ValueSet/specification-type-vs"
        }
      },
      {
        "id" : "CarePlanManifestation.period",
        "path" : "CarePlanManifestation.period",
        "short" : "Effective period of this manifestation",
        "definition" : "Effective period of this manifestation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "CarePlanManifestation.planPurpose",
        "path" : "CarePlanManifestation.planPurpose",
        "short" : "Purpose of the plan",
        "definition" : "Purpose of the plan",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/dam/ValueSet/plan-purpose-vs"
        }
      },
      {
        "id" : "CarePlanManifestation.status",
        "path" : "CarePlanManifestation.status",
        "short" : "Status of the manifestation",
        "definition" : "Status of the manifestation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "CarePlanManifestation.statusDate",
        "path" : "CarePlanManifestation.statusDate",
        "short" : "Date of the current status",
        "definition" : "Date of the current status",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "CarePlanManifestation.displayName",
        "path" : "CarePlanManifestation.displayName",
        "short" : "Display name for the plan",
        "definition" : "Display name for the plan",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "CarePlanManifestation.description",
        "path" : "CarePlanManifestation.description",
        "short" : "Description of the plan",
        "definition" : "Description of the plan",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "CarePlanManifestation.uses",
        "path" : "CarePlanManifestation.uses",
        "short" : "Plan definitions used",
        "definition" : "Plan definitions used",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/PlanDefinition"]
          }
        ]
      }
    ]
  }
}

```
