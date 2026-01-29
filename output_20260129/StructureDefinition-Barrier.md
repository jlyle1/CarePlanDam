# Barrier - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Barrier**

## Logical Model: Barrier 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/Barrier | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:Barrier |

 
A barrier that impedes progress toward goals or planned activities 

**Usages:**

* Refer to this Logical Model: [Protective Factor](StructureDefinition-ProtectiveFactor.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/Barrier)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Barrier.csv), [Excel](StructureDefinition-Barrier.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Barrier",
  "url" : "http://hl7.org/dam/StructureDefinition/Barrier",
  "version" : "0.1.0",
  "name" : "Barrier",
  "title" : "Barrier",
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
  "description" : "A barrier that impedes progress toward goals or planned activities",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/dam/StructureDefinition/Barrier",
  "baseDefinition" : "http://hl7.org/dam/StructureDefinition/PlanElement",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Barrier",
        "path" : "Barrier",
        "short" : "Barrier",
        "definition" : "A barrier that impedes progress toward goals or planned activities"
      },
      {
        "id" : "Barrier.barrier",
        "path" : "Barrier.barrier",
        "short" : "The type of barrier",
        "definition" : "The type of barrier",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Barrier.comment",
        "path" : "Barrier.comment",
        "short" : "Additional comments about the barrier",
        "definition" : "Additional comments about the barrier",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Barrier.impedesGoal",
        "path" : "Barrier.impedesGoal",
        "short" : "Goals impeded by this barrier",
        "definition" : "Goals impeded by this barrier",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/Goal"]
          }
        ]
      },
      {
        "id" : "Barrier.impedesActivity",
        "path" : "Barrier.impedesActivity",
        "short" : "Activities impeded by this barrier",
        "definition" : "Activities impeded by this barrier",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/PlannedActivity"]
          }
        ]
      }
    ]
  }
}

```
