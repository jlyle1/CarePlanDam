# Reconciliation Log - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Reconciliation Log**

## Logical Model: Reconciliation Log 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/ReconciliationLog | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:ReconciliationLog |

 
A log of reconciliation activities. Reconciliation merges versions of a plan maintained in different places or merges diverse specific plans into overarching plans. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/ReconciliationLog)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ReconciliationLog.csv), [Excel](StructureDefinition-ReconciliationLog.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ReconciliationLog",
  "url" : "http://hl7.org/dam/StructureDefinition/ReconciliationLog",
  "version" : "0.1.0",
  "name" : "ReconciliationLog",
  "title" : "Reconciliation Log",
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
  "description" : "A log of reconciliation activities. Reconciliation merges versions of a plan maintained in different places or merges diverse specific plans into overarching plans.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/dam/StructureDefinition/ReconciliationLog",
  "baseDefinition" : "http://hl7.org/dam/StructureDefinition/PlanElement",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "ReconciliationLog",
        "path" : "ReconciliationLog",
        "short" : "Reconciliation Log",
        "definition" : "A log of reconciliation activities. Reconciliation merges versions of a plan maintained in different places or merges diverse specific plans into overarching plans."
      },
      {
        "id" : "ReconciliationLog.date",
        "path" : "ReconciliationLog.date",
        "short" : "Date of the reconciliation",
        "definition" : "Date of the reconciliation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "ReconciliationLog.notes",
        "path" : "ReconciliationLog.notes",
        "short" : "Notes about the reconciliation",
        "definition" : "Notes about the reconciliation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ReconciliationLog.aggregates",
        "path" : "ReconciliationLog.aggregates",
        "short" : "Care plan manifestations being aggregated",
        "definition" : "Care plan manifestations being aggregated",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/dam/StructureDefinition/CarePlanManifestation"
            ]
          }
        ]
      },
      {
        "id" : "ReconciliationLog.uses",
        "path" : "ReconciliationLog.uses",
        "short" : "Reconciliation acts used",
        "definition" : "Reconciliation acts used",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/ReconciliationAct"]
          }
        ]
      },
      {
        "id" : "ReconciliationLog.informs",
        "path" : "ReconciliationLog.informs",
        "short" : "Resulting care plan manifestation",
        "definition" : "Resulting care plan manifestation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/dam/StructureDefinition/CarePlanManifestation"
            ]
          }
        ]
      }
    ]
  }
}

```
