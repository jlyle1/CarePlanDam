# Care Delivery Resource - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Care Delivery Resource**

## Logical Model: Care Delivery Resource 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/CareDeliveryResource | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:CareDeliveryResource |

 
A resource used in care delivery 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/CareDeliveryResource)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CareDeliveryResource.csv), [Excel](StructureDefinition-CareDeliveryResource.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CareDeliveryResource",
  "url" : "http://hl7.org/dam/StructureDefinition/CareDeliveryResource",
  "version" : "0.1.0",
  "name" : "CareDeliveryResource",
  "title" : "Care Delivery Resource",
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
  "description" : "A resource used in care delivery",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/dam/StructureDefinition/CareDeliveryResource",
  "baseDefinition" : "http://hl7.org/dam/StructureDefinition/PlanElement",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "CareDeliveryResource",
        "path" : "CareDeliveryResource",
        "short" : "Care Delivery Resource",
        "definition" : "A resource used in care delivery"
      },
      {
        "id" : "CareDeliveryResource.kind",
        "path" : "CareDeliveryResource.kind",
        "short" : "Type of resource",
        "definition" : "Type of resource",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "CareDeliveryResource.identifier",
        "path" : "CareDeliveryResource.identifier",
        "short" : "Identifier for the resource",
        "definition" : "Identifier for the resource",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "CareDeliveryResource.meets",
        "path" : "CareDeliveryResource.meets",
        "short" : "Requirements this resource meets",
        "definition" : "Requirements this resource meets",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/ResourceRequirement"]
          }
        ]
      },
      {
        "id" : "CareDeliveryResource.supports",
        "path" : "CareDeliveryResource.supports",
        "short" : "Activity executions this resource supports",
        "definition" : "Activity executions this resource supports",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/ActivityExecution"]
          }
        ]
      }
    ]
  }
}

```
