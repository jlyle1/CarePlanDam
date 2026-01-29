# Plan Definition - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Plan Definition**

## Logical Model: Plan Definition 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/PlanDefinition | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:PlanDefinition |

 
A definition or template for care plans 

**Usages:**

* Refer to this Logical Model: [Care Plan Manifestation](StructureDefinition-CarePlanManifestation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/PlanDefinition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PlanDefinition.csv), [Excel](StructureDefinition-PlanDefinition.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PlanDefinition",
  "url" : "http://hl7.org/dam/StructureDefinition/PlanDefinition",
  "version" : "0.1.0",
  "name" : "PlanDefinition",
  "title" : "Plan Definition",
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
  "description" : "A definition or template for care plans",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/dam/StructureDefinition/PlanDefinition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "PlanDefinition",
        "path" : "PlanDefinition",
        "short" : "Plan Definition",
        "definition" : "A definition or template for care plans"
      },
      {
        "id" : "PlanDefinition.name",
        "path" : "PlanDefinition.name",
        "short" : "Name of the plan definition",
        "definition" : "Name of the plan definition",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/dam/ValueSet/plan-definition-vs"
        }
      },
      {
        "id" : "PlanDefinition.version",
        "path" : "PlanDefinition.version",
        "short" : "Version of the definition",
        "definition" : "Version of the definition",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "PlanDefinition.url",
        "path" : "PlanDefinition.url",
        "short" : "URL for the definition",
        "definition" : "URL for the definition",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "url"
          }
        ]
      }
    ]
  }
}

```
