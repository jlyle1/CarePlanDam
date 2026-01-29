# Acceptance Review - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Acceptance Review**

## Logical Model: Acceptance Review 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/AcceptanceReview | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:AcceptanceReview |

 
A review where acknowledgment decisions are made about plan elements 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/AcceptanceReview)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-AcceptanceReview.csv), [Excel](StructureDefinition-AcceptanceReview.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "AcceptanceReview",
  "url" : "http://hl7.org/dam/StructureDefinition/AcceptanceReview",
  "version" : "0.1.0",
  "name" : "AcceptanceReview",
  "title" : "Acceptance Review",
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
  "description" : "A review where acknowledgment decisions are made about plan elements",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/dam/StructureDefinition/AcceptanceReview",
  "baseDefinition" : "http://hl7.org/dam/StructureDefinition/PlanElement",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "AcceptanceReview",
        "path" : "AcceptanceReview",
        "short" : "Acceptance Review",
        "definition" : "A review where acknowledgment decisions are made about plan elements"
      },
      {
        "id" : "AcceptanceReview.review",
        "path" : "AcceptanceReview.review",
        "short" : "Review pattern properties",
        "definition" : "Review pattern properties",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://hl7.org/dam/StructureDefinition/Review"
          }
        ]
      },
      {
        "id" : "AcceptanceReview.decision",
        "path" : "AcceptanceReview.decision",
        "short" : "The acknowledgment decision",
        "definition" : "The acknowledgment decision",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/dam/ValueSet/acknowledgement-vs"
        }
      },
      {
        "id" : "AcceptanceReview.mode",
        "path" : "AcceptanceReview.mode",
        "short" : "How the decision was made",
        "definition" : "How the decision was made",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/dam/ValueSet/decision-mode-vs"
        }
      },
      {
        "id" : "AcceptanceReview.trigger",
        "path" : "AcceptanceReview.trigger",
        "short" : "What triggered this review",
        "definition" : "What triggered this review",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/dam/ValueSet/review-event-vs"
        }
      },
      {
        "id" : "AcceptanceReview.reviews",
        "path" : "AcceptanceReview.reviews",
        "short" : "Elements being reviewed",
        "definition" : "Elements being reviewed",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/Acknowledgeable"]
          }
        ]
      }
    ]
  }
}

```
