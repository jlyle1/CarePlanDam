# Performable - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Performable**

## Logical Model: Performable ( Abstract ) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/Performable | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:Performable |

 
Abstract pattern for elements that have a performance lifecycle 

**Usages:**

* Use this Logical Model: [Activity Execution](StructureDefinition-ActivityExecution.md), [Activity Outcome Observation](StructureDefinition-ActivityOutcomeObservation.md), [Care Plan Manifestation](StructureDefinition-CarePlanManifestation.md) and [Goal](StructureDefinition-Goal.md)
* Refer to this Logical Model: [Care Team Member](StructureDefinition-CareTeamMember.md) and [Outcome Review](StructureDefinition-OutcomeReview.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/Performable)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Performable.csv), [Excel](StructureDefinition-Performable.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Performable",
  "url" : "http://hl7.org/dam/StructureDefinition/Performable",
  "version" : "0.1.0",
  "name" : "Performable",
  "title" : "Performable",
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
  "description" : "Abstract pattern for elements that have a performance lifecycle",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : true,
  "type" : "http://hl7.org/dam/StructureDefinition/Performable",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Performable",
        "path" : "Performable",
        "short" : "Performable",
        "definition" : "Abstract pattern for elements that have a performance lifecycle"
      },
      {
        "id" : "Performable.performancePeriod",
        "path" : "Performable.performancePeriod",
        "short" : "Time period during which the element is performed",
        "definition" : "Time period during which the element is performed",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "Performable.status",
        "path" : "Performable.status",
        "short" : "Current performance status",
        "definition" : "Current performance status",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/dam/ValueSet/performance-status-vs"
        }
      }
    ]
  }
}

```
