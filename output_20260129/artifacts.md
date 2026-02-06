# Artifacts Summary - v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [Acceptance Review](StructureDefinition-AcceptanceReview.md) | A review where acknowledgment decisions are made about plan elements |
| [Acknowledgeable](StructureDefinition-Acknowledgeable.md) | Abstract pattern for elements that can be acknowledged or agreed upon |
| [Activity Execution](StructureDefinition-ActivityExecution.md) | An execution of a planned activity |
| [Activity Outcome Observation](StructureDefinition-ActivityOutcomeObservation.md) | An observation characterizing the outcome of an activity execution |
| [Barrier](StructureDefinition-Barrier.md) | A barrier that impedes progress toward goals or planned activities |
| [Care Delivery Resource](StructureDefinition-CareDeliveryResource.md) | A resource used in care delivery |
| [Care Plan Manifestation](StructureDefinition-CarePlanManifestation.md) | A manifestation of a care plan - a specific instance of a care plan at a point in time |
| [Care Plan Patient](StructureDefinition-Patient.md) | The patient who is the subject of the care plan |
| [Care Team](StructureDefinition-CareTeam.md) | A team of individuals involved in the patient's care. For more details, consult the Care Team Domain Analysis Model. |
| [Care Team Member](StructureDefinition-CareTeamMember.md) | A member of the care team participating in the care plan |
| [Communication](StructureDefinition-Communication.md) | A communication event related to the care plan |
| [Communication Thread](StructureDefinition-CommunicationThread.md) | A thread of related communications |
| [Composable](StructureDefinition-Composable.md) | Abstract pattern for elements that can be organized hierarchically |
| [Concern](StructureDefinition-Concern.md) | A health concern or condition addressed by the care plan |
| [Expressible](StructureDefinition-Expressible.md) | Abstract pattern for elements that can be expressed by a care team member |
| [Goal](StructureDefinition-Goal.md) | A goal in the care plan. Possible relationship to concern, planned activity, performed activity, observation. |
| [Guideline](StructureDefinition-Guideline.md) | A clinical guideline that informs the care plan |
| [Health Risk](StructureDefinition-HealthRisk.md) | A health risk identified for the patient |
| [Modification](StructureDefinition-Modification.md) | A modification made to a plan element |
| [Organization](StructureDefinition-Organization.md) | An organization involved in care delivery |
| [Outcome Review](StructureDefinition-OutcomeReview.md) | A review assessing outcomes of performable elements |
| [Performable](StructureDefinition-Performable.md) | Abstract pattern for elements that have a performance lifecycle |
| [Plan Definition](StructureDefinition-CarePlanDefinition.md) | A definition or template for care plans |
| [Plan Element](StructureDefinition-CarePlanElement.md) | Abstract base for all care plan content elements. All plan elements are specific to a Patient. |
| [Planned Activity](StructureDefinition-PlannedActivity.md) | An activity planned as part of the care plan |
| [Preference](StructureDefinition-Preference.md) | A patient or care team preference that informs care planning |
| [Priority](StructureDefinition-Priority.md) | Abstract pattern for elements that can be prioritized |
| [Protective Factor](StructureDefinition-ProtectiveFactor.md) | A factor that protects against health risks or barriers |
| [Reconciliation Act](StructureDefinition-ReconciliationAct.md) | An act of reconciling plan elements |
| [Reconciliation Log](StructureDefinition-ReconciliationLog.md) | A log of reconciliation activities. Reconciliation merges versions of a plan maintained in different places or merges diverse specific plans into overarching plans. |
| [Resource Requirement](StructureDefinition-ResourceRequirement.md) | A requirement for resources to perform an activity |
| [Review](StructureDefinition-Review.md) | Abstract pattern for review activities |
| [Revisable](StructureDefinition-Revisable.md) | Abstract pattern for elements that can be revised over time |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Acknowledgement Value Set](ValueSet-acknowledgement-vs.md) | Value set for acknowledgment decisions |
| [Activity Completion Status Value Set](ValueSet-activity-completion-status-vs.md) | Value set for activity completion status |
| [Activity Order Status Value Set](ValueSet-activity-order-status-vs.md) | Value set for activity order status |
| [Decision Mode Value Set](ValueSet-decision-mode-vs.md) | Value set for decision modes |
| [Modification Type Value Set](ValueSet-modification-type-vs.md) | Value set for modification types |
| [Outcome Value Set](ValueSet-outcome-vs.md) | Value set for outcome assessment |
| [Performance Status Value Set](ValueSet-performance-status-vs.md) | Value set for performance status |
| [Plan Definition Value Set](ValueSet-plan-definition-vs.md) | Value set for plan definitions |
| [Plan Purpose Value Set](ValueSet-plan-purpose-vs.md) | Value set for plan purposes |
| [Preference Context Value Set](ValueSet-preference-context-vs.md) | Value set for preference contexts |
| [Review Event Value Set](ValueSet-review-event-vs.md) | Value set for review events |
| [Specification Type Value Set](ValueSet-specification-type-vs.md) | Value set for specification types |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Acknowledgement Code System](CodeSystem-acknowledgement-cs.md) | Codes for acknowledgment decisions |
| [Activity Completion Status Code System](CodeSystem-activity-completion-status-cs.md) | Codes for activity completion status |
| [Activity Order Status Code System](CodeSystem-activity-order-status-cs.md) | Codes for activity order status |
| [Decision Mode Code System](CodeSystem-decision-mode-cs.md) | Codes for how decisions are made |
| [Modification Type Code System](CodeSystem-modification-type-cs.md) | Codes for types of modifications |
| [Outcome Code System](CodeSystem-outcome-cs.md) | Codes for outcome assessment |
| [Performance Status Code System](CodeSystem-performance-status-cs.md) | Codes for performance status of activities |
| [Plan Definition Code System](CodeSystem-plan-definition-cs.md) | Codes for types of plan definitions |
| [Plan Purpose Code System](CodeSystem-plan-purpose-cs.md) | Codes for care plan purposes |
| [Preference Context Code System](CodeSystem-preference-context-cs.md) | Codes for preference contexts |
| [Review Event Code System](CodeSystem-review-event-cs.md) | Codes for events that trigger reviews |
| [Specification Type Code System](CodeSystem-specification-type-cs.md) | Codes for care plan specification types |

