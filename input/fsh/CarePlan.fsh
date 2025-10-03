Logical: CarePlan
Id: careplan-logical-model
Title: "CarePlan Logical Model"
Characteristics: #can-be-target

* planSpecificationType 0..1 CodeableConcept "Kind of plan specification" 
* planSpecificationType from CarePlanSpecificationTypeVS (extensible)
* PlanSpecification 0..* uri "URI of plan definition"
* PlanPurpose 0..1 CodeableConcept "Purpose of the plan" 
* PlanPurpose from CarePlanPurposeVS (extensible)
* Author 0..1 Reference "Author of the plan"
* CreateDate 0..1 dateTime "Creation date of the plan"
* LastUpdated 0..1 dateTime "Last updated date of the plan"
* Status 0..1 CodeableConcept "Status of the plan" 
* Status from CarePlanStatusVS (extensible)
* StatusDate 0..1 dateTime "Status date of the plan"
* Name 0..1 string "Name of the plan"
* PlanDescription 0..1 string "Description of the plan"