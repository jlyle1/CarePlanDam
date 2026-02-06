# Care Plan Patient - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Care Plan Patient**

## Logical Model: Care Plan Patient 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/Patient | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:Patient |

 
The patient who is the subject of the care plan 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/Patient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Patient.csv), [Excel](StructureDefinition-Patient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Patient",
  "url" : "http://hl7.org/dam/StructureDefinition/Patient",
  "version" : "0.1.0",
  "name" : "Patient",
  "title" : "Care Plan Patient",
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
  "description" : "The patient who is the subject of the care plan",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/dam/StructureDefinition/Patient",
  "baseDefinition" : "http://hl7.org/dam/StructureDefinition/CarePlanElement",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient",
        "short" : "Care Plan Patient",
        "definition" : "The patient who is the subject of the care plan"
      }
    ]
  }
}

```
