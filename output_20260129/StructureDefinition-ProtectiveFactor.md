# Protective Factor - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Protective Factor**

## Logical Model: Protective Factor 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/ProtectiveFactor | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:ProtectiveFactor |

 
A factor that protects against health risks or barriers 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/ProtectiveFactor)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ProtectiveFactor.csv), [Excel](StructureDefinition-ProtectiveFactor.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ProtectiveFactor",
  "url" : "http://hl7.org/dam/StructureDefinition/ProtectiveFactor",
  "version" : "0.1.0",
  "name" : "ProtectiveFactor",
  "title" : "Protective Factor",
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
  "description" : "A factor that protects against health risks or barriers",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/dam/StructureDefinition/ProtectiveFactor",
  "baseDefinition" : "http://hl7.org/dam/StructureDefinition/CarePlanElement",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "ProtectiveFactor",
        "path" : "ProtectiveFactor",
        "short" : "Protective Factor",
        "definition" : "A factor that protects against health risks or barriers"
      },
      {
        "id" : "ProtectiveFactor.factor",
        "path" : "ProtectiveFactor.factor",
        "short" : "The protective factor",
        "definition" : "The protective factor",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ProtectiveFactor.comment",
        "path" : "ProtectiveFactor.comment",
        "short" : "Additional comments",
        "definition" : "Additional comments",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ProtectiveFactor.mitigatesRisk",
        "path" : "ProtectiveFactor.mitigatesRisk",
        "short" : "Health risks mitigated by this factor",
        "definition" : "Health risks mitigated by this factor",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/HealthRisk"]
          }
        ]
      },
      {
        "id" : "ProtectiveFactor.mitigatesBarrier",
        "path" : "ProtectiveFactor.mitigatesBarrier",
        "short" : "Barriers mitigated by this factor",
        "definition" : "Barriers mitigated by this factor",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/Barrier"]
          }
        ]
      },
      {
        "id" : "ProtectiveFactor.supportsActivity",
        "path" : "ProtectiveFactor.supportsActivity",
        "short" : "Activities supported by this factor",
        "definition" : "Activities supported by this factor",
        "min" : 0,
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
