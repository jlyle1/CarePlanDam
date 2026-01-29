# Care Team Member - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Care Team Member**

## Logical Model: Care Team Member 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/CareTeamMember | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:CareTeamMember |

 
A member of the care team participating in the care plan 

**Usages:**

* Refer to this Logical Model: [Communication](StructureDefinition-Communication.md), [Organization](StructureDefinition-Organization.md) and [Plan Element](StructureDefinition-PlanElement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/CareTeamMember)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CareTeamMember.csv), [Excel](StructureDefinition-CareTeamMember.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CareTeamMember",
  "url" : "http://hl7.org/dam/StructureDefinition/CareTeamMember",
  "version" : "0.1.0",
  "name" : "CareTeamMember",
  "title" : "Care Team Member",
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
  "description" : "A member of the care team participating in the care plan",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/dam/StructureDefinition/CareTeamMember",
  "baseDefinition" : "http://hl7.org/dam/StructureDefinition/PlanElement",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "CareTeamMember",
        "path" : "CareTeamMember",
        "short" : "Care Team Member",
        "definition" : "A member of the care team participating in the care plan"
      },
      {
        "id" : "CareTeamMember.name",
        "path" : "CareTeamMember.name",
        "short" : "Name of the care team member",
        "definition" : "Name of the care team member",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "CareTeamMember.role",
        "path" : "CareTeamMember.role",
        "short" : "Role on the care team",
        "definition" : "Role on the care team",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "CareTeamMember.performs",
        "path" : "CareTeamMember.performs",
        "short" : "Performable elements this member performs",
        "definition" : "Performable elements this member performs",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/Performable"]
          }
        ]
      },
      {
        "id" : "CareTeamMember.expresses",
        "path" : "CareTeamMember.expresses",
        "short" : "Expressible elements this member expresses",
        "definition" : "Expressible elements this member expresses",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/Expressible"]
          }
        ]
      },
      {
        "id" : "CareTeamMember.belongsTo",
        "path" : "CareTeamMember.belongsTo",
        "short" : "Care team membership",
        "definition" : "Care team membership",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/CareTeam"]
          }
        ]
      },
      {
        "id" : "CareTeamMember.performsReview",
        "path" : "CareTeamMember.performsReview",
        "short" : "Reviews performed by this member",
        "definition" : "Reviews performed by this member",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/Review"]
          }
        ]
      },
      {
        "id" : "CareTeamMember.performsReconciliation",
        "path" : "CareTeamMember.performsReconciliation",
        "short" : "Reconciliation acts performed",
        "definition" : "Reconciliation acts performed",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/ReconciliationAct"]
          }
        ]
      },
      {
        "id" : "CareTeamMember.assigns",
        "path" : "CareTeamMember.assigns",
        "short" : "Priority assignments made by this member",
        "definition" : "Priority assignments made by this member",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/Prioritizable"]
          }
        ]
      }
    ]
  }
}

```
