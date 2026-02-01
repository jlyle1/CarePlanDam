# Reconciliation Act - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Reconciliation Act**

## Logical Model: Reconciliation Act 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/ReconciliationAct | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:ReconciliationAct |

 
An act of reconciling plan elements 

**Usages:**

* Refer to this Logical Model: [Care Team Member](StructureDefinition-CareTeamMember.md) and [Reconciliation Log](StructureDefinition-ReconciliationLog.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/ReconciliationAct)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ReconciliationAct.csv), [Excel](StructureDefinition-ReconciliationAct.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ReconciliationAct",
  "url" : "http://hl7.org/dam/StructureDefinition/ReconciliationAct",
  "version" : "0.1.0",
  "name" : "ReconciliationAct",
  "title" : "Reconciliation Act",
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
  "description" : "An act of reconciling plan elements",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/dam/StructureDefinition/ReconciliationAct",
  "baseDefinition" : "http://hl7.org/dam/StructureDefinition/CarePlanElement",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "ReconciliationAct",
        "path" : "ReconciliationAct",
        "short" : "Reconciliation Act",
        "definition" : "An act of reconciling plan elements"
      },
      {
        "id" : "ReconciliationAct.role",
        "path" : "ReconciliationAct.role",
        "short" : "Role in the reconciliation",
        "definition" : "Role in the reconciliation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ReconciliationAct.note",
        "path" : "ReconciliationAct.note",
        "short" : "Notes about the reconciliation act",
        "definition" : "Notes about the reconciliation act",
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
