# Modification Type Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Modification Type Code System**

## CodeSystem: Modification Type Code System 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/CodeSystem/modification-type-cs | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:ModificationTypeCS |

 
Codes for types of modifications 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ModificationTypeVS](ValueSet-modification-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "modification-type-cs",
  "url" : "http://hl7.org/dam/CodeSystem/modification-type-cs",
  "version" : "0.1.0",
  "name" : "ModificationTypeCS",
  "title" : "Modification Type Code System",
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
  "description" : "Codes for types of modifications",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "omit",
      "display" : "Omit",
      "definition" : "Element is omitted"
    },
    {
      "code" : "modify",
      "display" : "Modify",
      "definition" : "Element is modified"
    },
    {
      "code" : "add",
      "display" : "Add",
      "definition" : "Element is added"
    }
  ]
}

```
