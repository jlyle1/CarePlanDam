# Review - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Review**

## Logical Model: Review ( Abstract ) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/Review | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:Review |

 
Abstract pattern for review activities 

**Usages:**

* Use this Logical Model: [Acceptance Review](StructureDefinition-AcceptanceReview.md) and [Outcome Review](StructureDefinition-OutcomeReview.md)
* Refer to this Logical Model: [Care Team Member](StructureDefinition-CareTeamMember.md) and [Revisable](StructureDefinition-Revisable.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/Review)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Review.csv), [Excel](StructureDefinition-Review.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Review",
  "url" : "http://hl7.org/dam/StructureDefinition/Review",
  "version" : "0.1.0",
  "name" : "Review",
  "title" : "Review",
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
  "description" : "Abstract pattern for review activities",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : true,
  "type" : "http://hl7.org/dam/StructureDefinition/Review",
  "baseDefinition" : "http://hl7.org/dam/StructureDefinition/Composable",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Review",
        "path" : "Review",
        "short" : "Review",
        "definition" : "Abstract pattern for review activities"
      },
      {
        "id" : "Review.note",
        "path" : "Review.note",
        "short" : "Notes from the review",
        "definition" : "Notes from the review",
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
