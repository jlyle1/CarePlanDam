# Resource Requirement - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Resource Requirement**

## Logical Model: Resource Requirement 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/ResourceRequirement | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:ResourceRequirement |

 
A requirement for resources to perform an activity 

**Usages:**

* Refer to this Logical Model: [Care Delivery Resource](StructureDefinition-CareDeliveryResource.md) and [Planned Activity](StructureDefinition-PlannedActivity.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/ResourceRequirement)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ResourceRequirement.csv), [Excel](StructureDefinition-ResourceRequirement.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ResourceRequirement",
  "url" : "http://hl7.org/dam/StructureDefinition/ResourceRequirement",
  "version" : "0.1.0",
  "name" : "ResourceRequirement",
  "title" : "Resource Requirement",
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
  "description" : "A requirement for resources to perform an activity",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/dam/StructureDefinition/ResourceRequirement",
  "baseDefinition" : "http://hl7.org/dam/StructureDefinition/CarePlanElement",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "ResourceRequirement",
        "path" : "ResourceRequirement",
        "short" : "Resource Requirement",
        "definition" : "A requirement for resources to perform an activity"
      },
      {
        "id" : "ResourceRequirement.kind",
        "path" : "ResourceRequirement.kind",
        "short" : "Type of resource required",
        "definition" : "Type of resource required",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "ResourceRequirement.quantity",
        "path" : "ResourceRequirement.quantity",
        "short" : "Quantity required",
        "definition" : "Quantity required",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      }
    ]
  }
}

```
