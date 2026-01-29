# Specification Type Code System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Specification Type Code System**

## CodeSystem: Specification Type Code System 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/CodeSystem/specification-type-cs | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:SpecificationTypeCS |

 
Codes for care plan specification types 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpecificationTypeVS](ValueSet-specification-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "specification-type-cs",
  "url" : "http://hl7.org/dam/CodeSystem/specification-type-cs",
  "version" : "0.1.0",
  "name" : "SpecificationTypeCS",
  "title" : "Specification Type Code System",
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
  "description" : "Codes for care plan specification types",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [
    {
      "code" : "rule-based-structured-document",
      "display" : "Rule-based Structured Document",
      "definition" : "Care plan as a rule-based structured document"
    },
    {
      "code" : "rule-based-ui-dataset",
      "display" : "Rule-based UI Dataset",
      "definition" : "Care plan as a rule-based UI dataset"
    },
    {
      "code" : "authored-structured-plan",
      "display" : "Authored Structured Plan",
      "definition" : "Care plan as an authored structured plan"
    },
    {
      "code" : "rule-based-api-dataset",
      "display" : "Rule-based API Dataset",
      "definition" : "Care plan as a rule-based API dataset"
    },
    {
      "code" : "unstructured-note",
      "display" : "Unstructured Note",
      "definition" : "Care plan as an unstructured note"
    },
    {
      "code" : "aggregation",
      "display" : "Aggregation",
      "definition" : "Care plan as an aggregation of other plans"
    }
  ]
}

```
