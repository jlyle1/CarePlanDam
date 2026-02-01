# Care Team - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Care Team**

## Logical Model: Care Team 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/CareTeam | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:CareTeam |

 
A team of individuals involved in the patient's care. For more details, consult the Care Team Domain Analysis Model. 

**Usages:**

* Refer to this Logical Model: [Care Team Member](StructureDefinition-CareTeamMember.md) and [Organization](StructureDefinition-Organization.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/CareTeam)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CareTeam.csv), [Excel](StructureDefinition-CareTeam.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CareTeam",
  "url" : "http://hl7.org/dam/StructureDefinition/CareTeam",
  "version" : "0.1.0",
  "name" : "CareTeam",
  "title" : "Care Team",
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
  "description" : "A team of individuals involved in the patient's care. For more details, consult the Care Team Domain Analysis Model.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/dam/StructureDefinition/CareTeam",
  "baseDefinition" : "http://hl7.org/dam/StructureDefinition/CarePlanElement",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "CareTeam",
        "path" : "CareTeam",
        "short" : "Care Team",
        "definition" : "A team of individuals involved in the patient's care. For more details, consult the Care Team Domain Analysis Model."
      },
      {
        "id" : "CareTeam.acknowledgeable",
        "path" : "CareTeam.acknowledgeable",
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
        "id" : "CareTeam.name",
        "path" : "CareTeam.name",
        "short" : "Name of the care team",
        "definition" : "Name of the care team",
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
