# Plan Element - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Plan Element**

## Logical Model: Plan Element ( Abstract ) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/PlanElement | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:PlanElement |

 
Abstract base for all care plan content elements. All plan elements are specific to a Patient. 

**Usages:**

* Derived from this Logical Model: [Acceptance Review](StructureDefinition-AcceptanceReview.md), [Activity Execution](StructureDefinition-ActivityExecution.md), [Activity Outcome Observation](StructureDefinition-ActivityOutcomeObservation.md), [Barrier](StructureDefinition-Barrier.md)... Show 19 more, [Care Delivery Resource](StructureDefinition-CareDeliveryResource.md), [Care Plan Manifestation](StructureDefinition-CarePlanManifestation.md), [Care Plan Patient](StructureDefinition-CarePlanPatient.md), [Care Team](StructureDefinition-CareTeam.md), [Care Team Member](StructureDefinition-CareTeamMember.md), [Communication](StructureDefinition-Communication.md), [Communication Thread](StructureDefinition-CommunicationThread.md), [Concern](StructureDefinition-Concern.md), [Goal](StructureDefinition-Goal.md), [Guideline](StructureDefinition-Guideline.md), [Health Risk](StructureDefinition-HealthRisk.md), [Modification](StructureDefinition-Modification.md), [Outcome Review](StructureDefinition-OutcomeReview.md), [Planned Activity](StructureDefinition-PlannedActivity.md), [Preference](StructureDefinition-Preference.md), [Protective Factor](StructureDefinition-ProtectiveFactor.md), [Reconciliation Act](StructureDefinition-ReconciliationAct.md), [Reconciliation Log](StructureDefinition-ReconciliationLog.md) and [Resource Requirement](StructureDefinition-ResourceRequirement.md)
* Refer to this Logical Model: [Communication](StructureDefinition-Communication.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/PlanElement)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PlanElement.csv), [Excel](StructureDefinition-PlanElement.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PlanElement",
  "url" : "http://hl7.org/dam/StructureDefinition/PlanElement",
  "version" : "0.1.0",
  "name" : "PlanElement",
  "title" : "Plan Element",
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
  "description" : "Abstract base for all care plan content elements. All plan elements are specific to a Patient.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : true,
  "type" : "http://hl7.org/dam/StructureDefinition/PlanElement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "PlanElement",
        "path" : "PlanElement",
        "short" : "Plan Element",
        "definition" : "Abstract base for all care plan content elements. All plan elements are specific to a Patient."
      },
      {
        "id" : "PlanElement.refersTo",
        "path" : "PlanElement.refersTo",
        "short" : "The patient this plan element pertains to",
        "definition" : "The patient this plan element pertains to",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
          }
        ]
      },
      {
        "id" : "PlanElement.hasAuthor",
        "path" : "PlanElement.hasAuthor",
        "short" : "Who authored this plan element",
        "definition" : "Who authored this plan element",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/CareTeamMember"]
          }
        ]
      },
      {
        "id" : "PlanElement.contains",
        "path" : "PlanElement.contains",
        "short" : "The care plan manifestation containing this element",
        "definition" : "The care plan manifestation containing this element",
        "min" : 0,
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
