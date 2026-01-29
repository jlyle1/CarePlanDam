# Composable - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Composable**

## Logical Model: Composable ( Abstract ) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/Composable | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:Composable |

 
Abstract pattern for elements that can be organized hierarchically 

**Usages:**

* Derived from this Logical Model: [Review](StructureDefinition-Review.md)
* Use this Logical Model: [Care Plan Manifestation](StructureDefinition-CarePlanManifestation.md), [Goal](StructureDefinition-Goal.md) and [Planned Activity](StructureDefinition-PlannedActivity.md)
* Refer to this Logical Model: [Composable](StructureDefinition-Composable.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/Composable)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Composable.csv), [Excel](StructureDefinition-Composable.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Composable",
  "url" : "http://hl7.org/dam/StructureDefinition/Composable",
  "version" : "0.1.0",
  "name" : "Composable",
  "title" : "Composable",
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
  "description" : "Abstract pattern for elements that can be organized hierarchically",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : true,
  "type" : "http://hl7.org/dam/StructureDefinition/Composable",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Composable",
        "path" : "Composable",
        "short" : "Composable",
        "definition" : "Abstract pattern for elements that can be organized hierarchically"
      },
      {
        "id" : "Composable.order",
        "path" : "Composable.order",
        "short" : "Order within the parent composition",
        "definition" : "Order within the parent composition",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "Composable.constitutive",
        "path" : "Composable.constitutive",
        "short" : "Whether this element is constitutive of the parent",
        "definition" : "Whether this element is constitutive of the parent",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "Composable.partOf",
        "path" : "Composable.partOf",
        "short" : "Parent composable element",
        "definition" : "Parent composable element",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/Composable"]
          }
        ]
      }
    ]
  }
}

```
