# Concern - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Concern**

## Logical Model: Concern 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/Concern | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:Concern |

 
A health concern or condition addressed by the care plan 

**Usages:**

* Refer to this Logical Model: [Goal](StructureDefinition-Goal.md) and [Guideline](StructureDefinition-Guideline.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/Concern)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Concern.csv), [Excel](StructureDefinition-Concern.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Concern",
  "url" : "http://hl7.org/dam/StructureDefinition/Concern",
  "version" : "0.1.0",
  "name" : "Concern",
  "title" : "Concern",
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
  "description" : "A health concern or condition addressed by the care plan",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/dam/StructureDefinition/Concern",
  "baseDefinition" : "http://hl7.org/dam/StructureDefinition/PlanElement",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Concern",
        "path" : "Concern",
        "short" : "Concern",
        "definition" : "A health concern or condition addressed by the care plan"
      },
      {
        "id" : "Concern.expressible",
        "path" : "Concern.expressible",
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
        "id" : "Concern.revisable",
        "path" : "Concern.revisable",
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
        "id" : "Concern.prioritizable",
        "path" : "Concern.prioritizable",
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
        "id" : "Concern.acknowledgeable",
        "path" : "Concern.acknowledgeable",
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
        "id" : "Concern.concern",
        "path" : "Concern.concern",
        "short" : "The concern or condition",
        "definition" : "The concern or condition",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Concern.comment",
        "path" : "Concern.comment",
        "short" : "Additional comments",
        "definition" : "Additional comments",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
