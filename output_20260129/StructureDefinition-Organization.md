# Organization - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Organization**

## Logical Model: Organization 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/Organization | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:Organization |

 
An organization involved in care delivery 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/Organization)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Organization.csv), [Excel](StructureDefinition-Organization.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Organization",
  "url" : "http://hl7.org/dam/StructureDefinition/Organization",
  "version" : "0.1.0",
  "name" : "Organization",
  "title" : "Organization",
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
  "description" : "An organization involved in care delivery",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/dam/StructureDefinition/Organization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Organization",
        "path" : "Organization",
        "short" : "Organization",
        "definition" : "An organization involved in care delivery"
      },
      {
        "id" : "Organization.name",
        "path" : "Organization.name",
        "short" : "Name of the organization",
        "definition" : "Name of the organization",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Organization.employs",
        "path" : "Organization.employs",
        "short" : "Care team members employed",
        "definition" : "Care team members employed",
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
        "id" : "Organization.defines",
        "path" : "Organization.defines",
        "short" : "Care teams defined by this organization",
        "definition" : "Care teams defined by this organization",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/dam/StructureDefinition/CareTeam"]
          }
        ]
      },
      {
        "id" : "Organization.owns",
        "path" : "Organization.owns",
        "short" : "Care plan manifestations owned",
        "definition" : "Care plan manifestations owned",
        "min" : 0,
        "max" : "*",
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
