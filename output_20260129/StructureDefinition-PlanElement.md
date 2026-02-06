# Plan Element - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Plan Element**

## Logical Model: Plan Element ( Abstract ) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/CarePlanElement | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:CarePlanElement |

 
Abstract base for all care plan content elements. All plan elements are specific to a Patient. 

**Usages:**

* Derived from this Logical Model: [Acceptance Review](StructureDefinition-AcceptanceReview.md), [Activity Execution](StructureDefinition-ActivityExecution.md), [Activity Outcome Observation](StructureDefinition-ActivityOutcomeObservation.md), [Barrier](StructureDefinition-Barrier.md)... Show 19 more, [Care Delivery Resource](StructureDefinition-CareDeliveryResource.md), [Care Plan Manifestation](StructureDefinition-CarePlanManifestation.md), [Care Plan Patient](StructureDefinition-Patient.md), [Care Team](StructureDefinition-CareTeam.md), [Care Team Member](StructureDefinition-CareTeamMember.md), [Communication](StructureDefinition-Communication.md), [Communication Thread](StructureDefinition-CommunicationThread.md), [Concern](StructureDefinition-Concern.md), [Goal](StructureDefinition-Goal.md), [Guideline](StructureDefinition-Guideline.md), [Health Risk](StructureDefinition-HealthRisk.md), [Modification](StructureDefinition-Modification.md), [Outcome Review](StructureDefinition-OutcomeReview.md), [Planned Activity](StructureDefinition-PlannedActivity.md), [Preference](StructureDefinition-Preference.md), [Protective Factor](StructureDefinition-ProtectiveFactor.md), [Reconciliation Act](StructureDefinition-ReconciliationAct.md), [Reconciliation Log](StructureDefinition-ReconciliationLog.md) and [Resource Requirement](StructureDefinition-ResourceRequirement.md)
* Refer to this Logical Model: [Communication](StructureDefinition-Communication.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/CarePlanElement)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CarePlanElement.csv), [Excel](StructureDefinition-CarePlanElement.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CarePlanElement",
  "url" : "http://hl7.org/dam/StructureDefinition/CarePlanElement",
  "version" : "0.1.0",
  "name" : "CarePlanElement",
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
  "type" : "http://hl7.org/dam/StructureDefinition/CarePlanElement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "CarePlanElement",
        "path" : "CarePlanElement",
        "short" : "Plan Element",
        "definition" : "Abstract base for all care plan content elements. All plan elements are specific to a Patient."
      },
      {
        "id" : "CarePlanElement.refersTo",
        "path" : "CarePlanElement.refersTo",
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
        "id" : "CarePlanElement.hasAuthor",
        "path" : "CarePlanElement.hasAuthor",
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
        "id" : "CarePlanElement.contains",
        "path" : "CarePlanElement.contains",
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
