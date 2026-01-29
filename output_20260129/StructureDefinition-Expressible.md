# Expressible - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Expressible**

## Logical Model: Expressible ( Abstract ) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/Expressible | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:Expressible |

 
Abstract pattern for elements that can be expressed by a care team member 

**Usages:**

* Use this Logical Model: [Concern](StructureDefinition-Concern.md), [Goal](StructureDefinition-Goal.md) and [Preference](StructureDefinition-Preference.md)
* Refer to this Logical Model: [Care Team Member](StructureDefinition-CareTeamMember.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/Expressible)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Expressible.csv), [Excel](StructureDefinition-Expressible.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Expressible",
  "url" : "http://hl7.org/dam/StructureDefinition/Expressible",
  "version" : "0.1.0",
  "name" : "Expressible",
  "title" : "Expressible",
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
  "description" : "Abstract pattern for elements that can be expressed by a care team member",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : true,
  "type" : "http://hl7.org/dam/StructureDefinition/Expressible",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Expressible",
        "path" : "Expressible",
        "short" : "Expressible",
        "definition" : "Abstract pattern for elements that can be expressed by a care team member"
      }
    ]
  }
}

```
