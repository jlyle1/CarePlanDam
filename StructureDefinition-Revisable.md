# Revisable - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Revisable**

## Logical Model: Revisable ( Abstract ) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/Revisable | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:Revisable |

 
Abstract pattern for elements that can be revised over time 

**Usages:**

* Use this Logical Model: [Care Plan Manifestation](StructureDefinition-CarePlanManifestation.md), [Concern](StructureDefinition-Concern.md), [Goal](StructureDefinition-Goal.md) and [Planned Activity](StructureDefinition-PlannedActivity.md)
* Refer to this Logical Model: [Revisable](StructureDefinition-Revisable.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/Revisable)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Revisable.csv), [Excel](StructureDefinition-Revisable.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Revisable",
  "url" : "http://hl7.org/dam/StructureDefinition/Revisable",
  "version" : "0.1.0",
  "name" : "Revisable",
  "title" : "Revisable",
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
  "description" : "Abstract pattern for elements that can be revised over time",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : true,
  "type" : "http://hl7.org/dam/StructureDefinition/Revisable",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Revisable",
        "path" : "Revisable",
        "short" : "Revisable",
        "definition" : "Abstract pattern for elements that can be revised over time"
      },
      {
        "id" : "Revisable.substantive",
        "path" : "Revisable.substantive",
        "short" : "Whether the revision is substantive",
        "definition" : "Whether the revision is substantive",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "Revisable.revisionDate",
        "path" : "Revisable.revisionDate",
        "short" : "Date of this revision",
        "definition" : "Date of this revision",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Revisable.version",
        "path" : "Revisable.version",
        "short" : "Version number",
        "definition" : "Version number",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "Revisable.revises",
        "path" : "Revisable.revises",
        "short" : "Previous version being revised",
        "definition" : "Previous version being revised",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/Revisable"]
          }
        ]
      },
      {
        "id" : "Revisable.basedOn",
        "path" : "Revisable.basedOn",
        "short" : "Reviews that informed this revision",
        "definition" : "Reviews that informed this revision",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/Review"]
          }
        ]
      }
    ]
  }
}

```
