# Modification - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modification**

## Logical Model: Modification 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/Modification | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:Modification |

 
A modification made to a plan element 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/Modification)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Modification.csv), [Excel](StructureDefinition-Modification.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Modification",
  "url" : "http://hl7.org/dam/StructureDefinition/Modification",
  "version" : "0.1.0",
  "name" : "Modification",
  "title" : "Modification",
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
  "description" : "A modification made to a plan element",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/dam/StructureDefinition/Modification",
  "baseDefinition" : "http://hl7.org/dam/StructureDefinition/PlanElement",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Modification",
        "path" : "Modification",
        "short" : "Modification",
        "definition" : "A modification made to a plan element"
      },
      {
        "id" : "Modification.item",
        "path" : "Modification.item",
        "short" : "Item being modified",
        "definition" : "Item being modified",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Modification.rationale",
        "path" : "Modification.rationale",
        "short" : "Rationale for the modification",
        "definition" : "Rationale for the modification",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Modification.type",
        "path" : "Modification.type",
        "short" : "Type of modification",
        "definition" : "Type of modification",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/dam/ValueSet/modification-type-vs"
        }
      },
      {
        "id" : "Modification.modification",
        "path" : "Modification.modification",
        "short" : "Description of the modification",
        "definition" : "Description of the modification",
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
