# Guideline - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Guideline**

## Logical Model: Guideline 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/Guideline | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:Guideline |

 
A clinical guideline that informs the care plan 

**Usages:**

* Refer to this Logical Model: [Goal](StructureDefinition-Goal.md) and [Planned Activity](StructureDefinition-PlannedActivity.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/Guideline)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Guideline.csv), [Excel](StructureDefinition-Guideline.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Guideline",
  "url" : "http://hl7.org/dam/StructureDefinition/Guideline",
  "version" : "0.1.0",
  "name" : "Guideline",
  "title" : "Guideline",
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
  "description" : "A clinical guideline that informs the care plan",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/dam/StructureDefinition/Guideline",
  "baseDefinition" : "http://hl7.org/dam/StructureDefinition/PlanElement",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Guideline",
        "path" : "Guideline",
        "short" : "Guideline",
        "definition" : "A clinical guideline that informs the care plan"
      },
      {
        "id" : "Guideline.name",
        "path" : "Guideline.name",
        "short" : "Name of the guideline",
        "definition" : "Name of the guideline",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Guideline.date",
        "path" : "Guideline.date",
        "short" : "Publication date of the guideline",
        "definition" : "Publication date of the guideline",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "Guideline.locator",
        "path" : "Guideline.locator",
        "short" : "URL or reference to the guideline",
        "definition" : "URL or reference to the guideline",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "url"
          }
        ]
      },
      {
        "id" : "Guideline.addresses",
        "path" : "Guideline.addresses",
        "short" : "Concerns addressed by this guideline",
        "definition" : "Concerns addressed by this guideline",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/Concern"]
          }
        ]
      }
    ]
  }
}

```
