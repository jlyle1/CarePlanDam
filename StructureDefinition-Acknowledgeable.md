# Acknowledgeable - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Acknowledgeable**

## Logical Model: Acknowledgeable ( Abstract ) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/StructureDefinition/Acknowledgeable | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:Acknowledgeable |

 
Abstract pattern for elements that can be acknowledged or agreed upon 

**Usages:**

* Use this Logical Model: [Care Plan Manifestation](StructureDefinition-CarePlanManifestation.md), [Care Team](StructureDefinition-CareTeam.md), [Concern](StructureDefinition-Concern.md), [Goal](StructureDefinition-Goal.md)... Show 2 more, [Planned Activity](StructureDefinition-PlannedActivity.md) and [Preference](StructureDefinition-Preference.md)
* Refer to this Logical Model: [Acceptance Review](StructureDefinition-AcceptanceReview.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/careplandam|current/StructureDefinition/Acknowledgeable)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Acknowledgeable.csv), [Excel](StructureDefinition-Acknowledgeable.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Acknowledgeable",
  "url" : "http://hl7.org/dam/StructureDefinition/Acknowledgeable",
  "version" : "0.1.0",
  "name" : "Acknowledgeable",
  "title" : "Acknowledgeable",
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
  "description" : "Abstract pattern for elements that can be acknowledged or agreed upon",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : true,
  "type" : "http://hl7.org/dam/StructureDefinition/Acknowledgeable",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "Acknowledgeable",
        "path" : "Acknowledgeable",
        "short" : "Acknowledgeable",
        "definition" : "Abstract pattern for elements that can be acknowledged or agreed upon"
      }
    ]
  }
}

```
