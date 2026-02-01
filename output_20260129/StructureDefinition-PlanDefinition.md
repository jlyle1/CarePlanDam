# Plan Definition - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Plan Definition**

## Logical Model: Plan Definition 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/CarePlanDefinition | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:CarePlanDefinition |

 
A definition or template for care plans 

**Usages:**

* Refer to this Logical Model: [Care Plan Manifestation](StructureDefinition-CarePlanManifestation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/CarePlanDefinition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CarePlanDefinition.csv), [Excel](StructureDefinition-CarePlanDefinition.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CarePlanDefinition",
  "url" : "http://hl7.org/dam/StructureDefinition/CarePlanDefinition",
  "version" : "0.1.0",
  "name" : "CarePlanDefinition",
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
  "type" : "http://hl7.org/dam/StructureDefinition/CarePlanDefinition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "CarePlanDefinition",
        "path" : "CarePlanDefinition",
        "short" : "Plan Definition",
        "definition" : "A definition or template for care plans"
      },
      {
        "id" : "CarePlanDefinition.name",
        "path" : "CarePlanDefinition.name",
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
        "id" : "CarePlanDefinition.version",
        "path" : "CarePlanDefinition.version",
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
        "id" : "CarePlanDefinition.url",
        "path" : "CarePlanDefinition.url",
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
