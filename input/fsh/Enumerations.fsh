// CodeSystems and ValueSets for Care Plan DAM enumerations

CodeSystem: AcknowledgementCS
Id: acknowledgement-cs
Title: "Acknowledgement Code System"
Description: "Codes for acknowledgment decisions"
* ^status = #active
* ^caseSensitive = true
* #acknowledge "Acknowledge" "Acknowledges the element without agreement or disagreement"
* #assert "Assert" "Asserts the element as true or valid"
* #agree "Agree" "Agrees with the element"
* #disagree "Disagree" "Disagrees with the element"

ValueSet: AcknowledgementVS
Id: acknowledgement-vs
Title: "Acknowledgement Value Set"
Description: "Value set for acknowledgment decisions"
* ^status = #active
* include codes from system AcknowledgementCS

CodeSystem: ActivityCompletionStatusCS
Id: activity-completion-status-cs
Title: "Activity Completion Status Code System"
Description: "Codes for activity completion status"
* ^status = #active
* ^caseSensitive = true
* #not-started "Not Started" "Activity has not started"
* #cancelled "Cancelled" "Activity was cancelled"
* #in-process "In Process" "Activity is in process"
* #stopped "Stopped" "Activity was stopped before completion"
* #completed "Completed" "Activity was completed"

ValueSet: ActivityCompletionStatusVS
Id: activity-completion-status-vs
Title: "Activity Completion Status Value Set"
Description: "Value set for activity completion status"
* ^status = #active
* include codes from system ActivityCompletionStatusCS

CodeSystem: ActivityOrderStatusCS
Id: activity-order-status-cs
Title: "Activity Order Status Code System"
Description: "Codes for activity order status"
* ^status = #active
* ^caseSensitive = true
* #not-orderable "Not Orderable" "Activity cannot be ordered"
* #not-ordered "Not Ordered" "Activity has not been ordered"
* #ordered "Ordered" "Activity has been ordered"

ValueSet: ActivityOrderStatusVS
Id: activity-order-status-vs
Title: "Activity Order Status Value Set"
Description: "Value set for activity order status"
* ^status = #active
* include codes from system ActivityOrderStatusCS

CodeSystem: DecisionModeCS
Id: decision-mode-cs
Title: "Decision Mode Code System"
Description: "Codes for how decisions are made"
* ^status = #active
* ^caseSensitive = true
* #explicit "Explicit" "Decision was made explicitly"
* #inherited "Inherited" "Decision was inherited from another element"
* #contextual "Contextual" "Decision was derived from context"

ValueSet: DecisionModeVS
Id: decision-mode-vs
Title: "Decision Mode Value Set"
Description: "Value set for decision modes"
* ^status = #active
* include codes from system DecisionModeCS

CodeSystem: ModificationTypeCS
Id: modification-type-cs
Title: "Modification Type Code System"
Description: "Codes for types of modifications"
* ^status = #active
* ^caseSensitive = true
* #omit "Omit" "Element is omitted"
* #modify "Modify" "Element is modified"
* #add "Add" "Element is added"

ValueSet: ModificationTypeVS
Id: modification-type-vs
Title: "Modification Type Value Set"
Description: "Value set for modification types"
* ^status = #active
* include codes from system ModificationTypeCS

CodeSystem: OutcomeCS
Id: outcome-cs
Title: "Outcome Code System"
Description: "Codes for outcome assessment"
* ^status = #active
* ^caseSensitive = true
* #resolved "Resolved" "The condition or issue has been resolved"
* #improved "Improved" "The condition or issue has improved"
* #stabilized "Stabilized" "The condition or issue has stabilized"
* #in-process "In Process" "The intervention is still in process"
* #maintained "Maintained" "The current state has been maintained"
* #deteriorated "Deteriorated" "The condition or issue has deteriorated"

ValueSet: OutcomeVS
Id: outcome-vs
Title: "Outcome Value Set"
Description: "Value set for outcome assessment"
* ^status = #active
* include codes from system OutcomeCS

CodeSystem: PerformanceStatusCS
Id: performance-status-cs
Title: "Performance Status Code System"
Description: "Codes for performance status of activities"
* ^status = #active
* ^caseSensitive = true
* #planned "Planned" "Activity is planned but not started"
* #in-process "In Process" "Activity is in process"
* #cancelled "Cancelled" "Activity was cancelled"
* #aborted "Aborted" "Activity was aborted"
* #completed "Completed" "Activity was completed"

ValueSet: PerformanceStatusVS
Id: performance-status-vs
Title: "Performance Status Value Set"
Description: "Value set for performance status"
* ^status = #active
* include codes from system PerformanceStatusCS

CodeSystem: CarePlanDefinitionCS
Id: care-plan-definition-cs
Title: "Care Plan Definition Code System"
Description: "Codes for types of care plan definitions"
* ^status = #active
* ^caseSensitive = true
* #c-cda-4-care-plan "C-CDA 4.0 Care Plan" "C-CDA 4.0 Care Plan specification"
* #pharmacist "Pharmacist" "Pharmacist care plan"
* #ada-diabetes-2025 "ADA Diabetes Standard of Care 2025" "ADA Diabetes Standard of Care 2025"

ValueSet: CarePlanDefinitionVS
Id: care-plan-definition-vs
Title: "Care Plan Definition Value Set"
Description: "Value set for care plan definitions"
* ^status = #active
* include codes from system CarePlanDefinitionCS

CodeSystem: PlanPurposeCS
Id: plan-purpose-cs
Title: "Plan Purpose Code System"
Description: "Codes for care plan purposes"
* ^status = #active
* ^caseSensitive = true
* #diabetes-mellitus "Diabetes Mellitus" "Care plan for diabetes mellitus management"
* #cardiac "Cardiac" "Care plan for cardiac conditions"
* #home-health-care "Home Health Care" "Care plan for home health care"

ValueSet: PlanPurposeVS
Id: plan-purpose-vs
Title: "Plan Purpose Value Set"
Description: "Value set for plan purposes"
* ^status = #active
* include codes from system PlanPurposeCS

CodeSystem: PreferenceContextCS
Id: preference-context-cs
Title: "Preference Context Code System"
Description: "Codes for preference contexts"
* ^status = #active
* ^caseSensitive = true
* #visitation "Visitation" "Preferences about visitation"
* #diet "Diet" "Dietary preferences"
* #medication "Medication" "Medication preferences"
* #treatment "Treatment" "Treatment preferences"
* #discharge-planning "Discharge Planning" "Discharge planning preferences"
* #care "Care" "General care preferences"

ValueSet: PreferenceContextVS
Id: preference-context-vs
Title: "Preference Context Value Set"
Description: "Value set for preference contexts"
* ^status = #active
* include codes from system PreferenceContextCS

CodeSystem: ReviewEventCS
Id: review-event-cs
Title: "Review Event Code System"
Description: "Codes for events that trigger reviews"
* ^status = #active
* ^caseSensitive = true
* #creation "Creation" "Review triggered by creation of an element"
* #periodic "Periodic" "Review triggered by periodic schedule"
* #caused "Caused" "Review triggered by a specific cause or event"

ValueSet: ReviewEventVS
Id: review-event-vs
Title: "Review Event Value Set"
Description: "Value set for review events"
* ^status = #active
* include codes from system ReviewEventCS

CodeSystem: SpecificationTypeCS
Id: specification-type-cs
Title: "Specification Type Code System"
Description: "Codes for care plan specification types"
* ^status = #active
* ^caseSensitive = true
* #rule-based-structured-document "Rule-based Structured Document" "Care plan as a rule-based structured document"
* #rule-based-ui-dataset "Rule-based UI Dataset" "Care plan as a rule-based UI dataset"
* #authored-structured-plan "Authored Structured Plan" "Care plan as an authored structured plan"
* #rule-based-api-dataset "Rule-based API Dataset" "Care plan as a rule-based API dataset"
* #unstructured-note "Unstructured Note" "Care plan as an unstructured note"
* #aggregation "Aggregation" "Care plan as an aggregation of other plans"

ValueSet: SpecificationTypeVS
Id: specification-type-vs
Title: "Specification Type Value Set"
Description: "Value set for specification types"
* ^status = #active
* include codes from system SpecificationTypeCS
