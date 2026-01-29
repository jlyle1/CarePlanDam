# Plan Definition Value Set - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Plan Definition Value Set**

## ValueSet: Plan Definition Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/dam/ValueSet/plan-definition-vs | *Version*:0.1.0 |
| Active as of 2026-01-29 | *Computable Name*:PlanDefinitionVS |

 
Value set for plan definitions 

 **References** 

* [Plan Definition](StructureDefinition-PlanDefinition.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "plan-definition-vs",
  "url" : "http://hl7.org/dam/ValueSet/plan-definition-vs",
  "version" : "0.1.0",
  "name" : "PlanDefinitionVS",
  "title" : "Plan Definition Value Set",
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
  "description" : "Value set for plan definitions",
  "compose" : {
    "include" : [
      {
        "system" : "http://hl7.org/dam/CodeSystem/plan-definition-cs"
      }
    ]
  }
}

```
