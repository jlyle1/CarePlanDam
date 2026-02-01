# Health Risk - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Health Risk**

## Logical Model: Health Risk 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/HealthRisk | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:HealthRisk |

 
A health risk identified for the patient 

**Usages:**

* Refer to this Logical Model: [Planned Activity](StructureDefinition-PlannedActivity.md) and [Protective Factor](StructureDefinition-ProtectiveFactor.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/HealthRisk)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HealthRisk.csv), [Excel](StructureDefinition-HealthRisk.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HealthRisk",
  "url" : "http://hl7.org/dam/StructureDefinition/HealthRisk",
  "version" : "0.1.0",
  "name" : "HealthRisk",
  "title" : "Health Risk",
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
  "description" : "A health risk identified for the patient",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/dam/StructureDefinition/HealthRisk",
  "baseDefinition" : "http://hl7.org/dam/StructureDefinition/CarePlanElement",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "HealthRisk",
        "path" : "HealthRisk",
        "short" : "Health Risk",
        "definition" : "A health risk identified for the patient"
      },
      {
        "id" : "HealthRisk.risk",
        "path" : "HealthRisk.risk",
        "short" : "The type of risk",
        "definition" : "The type of risk",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "HealthRisk.comment",
        "path" : "HealthRisk.comment",
        "short" : "Additional comments about the risk",
        "definition" : "Additional comments about the risk",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "HealthRisk.criticality",
        "path" : "HealthRisk.criticality",
        "short" : "Criticality level of the risk",
        "definition" : "Criticality level of the risk",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
