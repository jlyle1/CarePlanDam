CodeSystem: CarePlanSpecificationTypeCS
Title: "Care Plan Specification Type"
Description: "Types of specifications for care plans."
Id: careplan-specification-type-cs

* #unstructured-document "Unstructured document"    // e.g., SOAP note
* #structured-document "Structured document"        // e.g., CDA
* #authored-plan "Authored plan"                    // e.g., care plan created by a clinician
* #rule-based-api-dataset "Rule-based API Dataset"  // e.g., interoperable payload per specification
* #system-defined-rules "System-defined rules"      // e.g., rules defined within a system

ValueSet: CarePlanSpecificationTypeVS
Title: "Care Plan Specification Type Value Set"
Description: "A value set for care plan specification types."   
Id: careplan-specification-type-vs
* include codes from system CarePlanSpecificationTypeCS

CodeSystem: CarePlanPurposeCS
Title: "Care Plan Purpose"
Description: "Types of purposes for care plans"
Id: careplan-purpose-cs

* #home-health "Home health plan"                    // e.g., care provided in a patient's home
* #trauma-rehabilitation "Trauma rehabilitation plan" // e.g., recovery after injury
* #cardiac-rehabilitation "Cardiac care plan"        // e.g., specialized care for heart conditions
* #diabetes-management "Diabetes management plan"    // e.g., care plans focused on diabetes
* #aggregated-plan "Aggregated care plan"            // e.g., combined care plans from multiple sources
* #query "Query-based care plan"                     // e.g., care plans generated from queries

ValueSet: CarePlanPurposeVS
Title: "Care Plan Purpose Value Set"
Description: "A value set for care plan purposes"
Id: careplan-purpose-vs
* include codes from system CarePlanPurposeCS

CodeSystem: CarePlanStatusCS
Title: "Care Plan Status"
Description: "Statuses for care plans"
Id: careplan-status-cs

* #proposed "Proposed"          // A plan for review or discussion
* #in-progress "In Progress"    // An active plan being used by providers 
* #completed "Completed"        // A plan that has been completed or largely completed and is no longer active
* #on-hold "On Hold"            // A plan that has been temporarily paused
* #aborted "Aborted"            // A plan that was started but stopped before completion
* #cancelled "Cancelled"        // A plan that was never started
* #snapshot "Snapshot"          // A static snapshot of rccord data without state  

ValueSet: CarePlanStatusVS
Title: "Care Plan Status Value Set"
Description: "A value set for care plan statuses."
Id: careplan-status-vs
* include codes from system CarePlanStatusCS