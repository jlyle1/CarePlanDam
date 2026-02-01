# Preference - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Preference**

## Logical Model: Preference 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/Preference | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:Preference |

 
A patient or care team preference that informs care planning 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/Preference)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Preference.csv), [Excel](StructureDefinition-Preference.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Preference",
  "url" : "http://hl7.org/dam/StructureDefinition/Preference",
  "version" : "0.1.0",
  "name" : "Preference",
  "title" : "Preference",
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
  "description" : "A patient or care team preference that informs care planning",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/dam/StructureDefinition/Preference",
  "baseDefinition" : "http://hl7.org/dam/StructureDefinition/CarePlanElement",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Preference",
        "path" : "Preference",
        "short" : "Preference",
        "definition" : "A patient or care team preference that informs care planning"
      },
      {
        "id" : "Preference.acknowledgeable",
        "path" : "Preference.acknowledgeable",
        "short" : "Acknowledgeable pattern properties",
        "definition" : "Acknowledgeable pattern properties",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://hl7.org/dam/StructureDefinition/Acknowledgeable"
          }
        ]
      },
      {
        "id" : "Preference.Priority",
        "path" : "Preference.Priority",
        "short" : "Priority pattern properties",
        "definition" : "Priority pattern properties",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://hl7.org/dam/StructureDefinition/Priority"
          }
        ]
      },
      {
        "id" : "Preference.expressible",
        "path" : "Preference.expressible",
        "short" : "Expressible pattern properties",
        "definition" : "Expressible pattern properties",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://hl7.org/dam/StructureDefinition/Expressible"
          }
        ]
      },
      {
        "id" : "Preference.context",
        "path" : "Preference.context",
        "short" : "Context for the preference",
        "definition" : "Context for the preference",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/dam/ValueSet/preference-context-vs"
        }
      },
      {
        "id" : "Preference.description",
        "path" : "Preference.description",
        "short" : "Description of the preference",
        "definition" : "Description of the preference",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Preference.action",
        "path" : "Preference.action",
        "short" : "Preferred action",
        "definition" : "Preferred action",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Preference.preferencePriority",
        "path" : "Preference.preferencePriority",
        "short" : "Priority of this preference",
        "definition" : "Priority of this preference",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Preference.reason",
        "path" : "Preference.reason",
        "short" : "Reason for the preference",
        "definition" : "Reason for the preference",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Preference.note",
        "path" : "Preference.note",
        "short" : "Additional notes",
        "definition" : "Additional notes",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Preference.preferenceStatus",
        "path" : "Preference.preferenceStatus",
        "short" : "Status of the preference",
        "definition" : "Status of the preference",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Preference.informsActivity",
        "path" : "Preference.informsActivity",
        "short" : "Activities informed by this preference",
        "definition" : "Activities informed by this preference",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/PlannedActivity"]
          }
        ]
      },
      {
        "id" : "Preference.informsGoal",
        "path" : "Preference.informsGoal",
        "short" : "Goals informed by this preference",
        "definition" : "Goals informed by this preference",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/Goal"]
          }
        ]
      }
    ]
  }
}

```
