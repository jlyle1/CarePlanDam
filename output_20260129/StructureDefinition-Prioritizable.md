# Priority - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Priority**

## Logical Model: Priority ( Abstract ) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/Priority | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:Priority |

 
Abstract pattern for elements that can be prioritized 

**Usages:**

* Use this Logical Model: [Concern](StructureDefinition-Concern.md), [Goal](StructureDefinition-Goal.md), [Planned Activity](StructureDefinition-PlannedActivity.md) and [Preference](StructureDefinition-Preference.md)
* Refer to this Logical Model: [Care Team Member](StructureDefinition-CareTeamMember.md) and [Priority](StructureDefinition-Priority.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/Priority)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Priority.csv), [Excel](StructureDefinition-Priority.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Priority",
  "url" : "http://hl7.org/dam/StructureDefinition/Priority",
  "version" : "0.1.0",
  "name" : "Priority",
  "title" : "Priority",
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
  "description" : "Abstract pattern for elements that can be prioritized",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : true,
  "type" : "http://hl7.org/dam/StructureDefinition/Priority",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Priority",
        "path" : "Priority",
        "short" : "Priority",
        "definition" : "Abstract pattern for elements that can be prioritized"
      },
      {
        "id" : "Priority.priority",
        "path" : "Priority.priority",
        "short" : "Priority ranking",
        "definition" : "Priority ranking",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "Priority.dateAssigned",
        "path" : "Priority.dateAssigned",
        "short" : "Date the priority was assigned",
        "definition" : "Date the priority was assigned",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Priority.withRespectTo",
        "path" : "Priority.withRespectTo",
        "short" : "Context for relative priority",
        "definition" : "Context for relative priority",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/Priority"]
          }
        ]
      }
    ]
  }
}

```
