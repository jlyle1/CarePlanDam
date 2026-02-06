// CarePlanElement - Base logical model for all plan content elements
// All classes in this model are specializations of CarePlanElement
// All plan elements are specific to the Patient

Logical: CarePlanElement
Id: CarePlanElement
Title: "Plan Element"
Characteristics: #can-be-target
Description: "Abstract base class for all care plan content elements to support modeling general capabilities, such as the possibility of being the subject of communication. All plan elements are specific to a Patient."
* ^abstract = true
* ^status = #active
* refersTo 1..1 Reference(Patient) "The patient this plan element pertains to"
* hasAuthor 1..* Reference(CareTeamMember) "Who authored this plan element"

// Simple descendants of CarePlanElement (single inheritance)

Logical: Patient
Id: Patient
Title: "Patient"
Characteristics: #can-be-target
Description: "A person under the care of one or more healthcare service providers"
Parent: CarePlanElement
* ^status = #active

Logical: Barrier
Id: Barrier
Title: "Barrier"
Characteristics: #can-be-target
Description: "A factor that impedes progress toward goals or planned activities. Examples include a food desert that prevents a healthy eating, an injury that prevents exercise, lack of transportation to rehabilitation center."
Parent: CarePlanElement
* ^status = #active
* barrier 1..1 CodeableConcept "The type of barrier"
* comment 1..1 string "Additional comments about the barrier"
* impedesGoal 1..* Reference(Goal) "Goals impeded by this barrier"
* impedesActivity 1..* Reference(PlannedActivity) "Activities impeded by this barrier"

Logical: CareTeamMember
Id: CareTeamMember
Title: "Care Team Member"
Characteristics: #can-be-target
Description: "A person, including the patient, responsible for clinical or ancillary healthcare services for a patient. A care team member may have various roles, such as authoring a plan element or performing an activity execution."
Parent: CarePlanElement
* ^status = #active
* name 1..1 string "Name of the care team member"
* role 1..1 CodeableConcept "Role on the care team"
* performs 0..* Reference(ActivityExecution) "Activity executions this member performs"
* belongsTo 0..1 Reference(CareTeam) "Care team membership"
* performsReview 0..* Reference(AcceptanceReview or OutcomeReview) "Reviews performed by this member"
* performsReconciliation 0..* Reference(ReconciliationAct) "Reconciliation acts performed"
* assigns 0..* Reference(Priority) "Priority assignments made by this member"

Logical: Communication
Id: Communication
Title: "Communication"
Characteristics: #can-be-target
Description: "A communication event related to the care plan"
Parent: CarePlanElement
* ^status = #active
* time 1..1 dateTime "When the communication occurred"
* content 1..1 base64Binary "Content of the communication"
* topic 1..1 CodeableConcept "Topic of the communication"
* refersToElements 0..* Reference(CarePlanElement) "Plan elements referenced in this communication"
* communicationAuthor 1..1 Reference(CareTeamMember) "Who authored the communication"
* recipient 1..* Reference(CareTeamMember) "Recipients of the communication"
* thread 0..1 Reference(CommunicationThread) "Thread this communication belongs to"

Logical: CommunicationThread
Id: CommunicationThread
Title: "Communication Thread"
Characteristics: #can-be-target
Description: "A thread of related communications"
Parent: CarePlanElement
* ^status = #active
* topic 1..1 CodeableConcept "Topic of the thread"

Logical: Guideline
Id: Guideline
Title: "Guideline"
Characteristics: #can-be-target
Description: "A clinical guideline that informs the care plan"
Parent: CarePlanElement
* ^status = #active
* name 1..1 string "Name of the guideline"
* date 1..1 date "Publication date of the guideline"
* locator 1..1 url "URL or reference to the guideline"
* addresses 1..* Reference(Concern) "Concerns addressed by this guideline"

Logical: HealthRisk
Id: HealthRisk
Title: "Health Risk"
Characteristics: #can-be-target
Description: "A health risk identified for the patient"
Parent: CarePlanElement
* ^status = #active
* risk 1..1 CodeableConcept "The type of risk"
* comment 1..1 string "Additional comments about the risk"
* criticality 1..1 CodeableConcept "Criticality level of the risk"

Logical: Modification
Id: Modification
Title: "Modification"
Characteristics: #can-be-target
Description: "A modification made to a plan element"
Parent: CarePlanElement
* ^status = #active
* item 1..1 string "Item being modified"
* rationale 1..1 CodeableConcept "Rationale for the modification"
* type 1..1 code "Type of modification"
* type from ModificationTypeVS (required)
* modification 1..1 string "Description of the modification"

Logical: ProtectiveFactor
Id: ProtectiveFactor
Title: "Protective Factor"
Characteristics: #can-be-target
Description: "A factor that protects against health risks or barriers"
Parent: CarePlanElement
* ^status = #active
* factor 1..1 CodeableConcept "The protective factor"
* comment 1..1 string "Additional comments"
* mitigatesRisk 0..* Reference(HealthRisk) "Health risks mitigated by this factor"
* mitigatesBarrier 0..* Reference(Barrier) "Barriers mitigated by this factor"
* supportsActivity 0..* Reference(PlannedActivity) "Activities supported by this factor"

Logical: ReconciliationAct
Id: ReconciliationAct
Title: "Reconciliation Act"
Characteristics: #can-be-target
Description: "An act of reconciling plan elements"
Parent: CarePlanElement
* ^status = #active
* role 1..1 string "Role in the reconciliation"
* note 1..1 string "Notes about the reconciliation act"

Logical: ReconciliationLog
Id: ReconciliationLog
Title: "Reconciliation Log"
Characteristics: #can-be-target
Description: "A log of reconciliation activities. Reconciliation merges versions of a plan maintained in different places or merges diverse specific plans into overarching plans."
Parent: CarePlanElement
* ^status = #active
* date 1..1 dateTime "Date of the reconciliation"
* notes 1..1 string "Notes about the reconciliation"
* aggregates 1..* Reference(CarePlanManifestation) "Care plan manifestations being aggregated"
* uses 1..* Reference(ReconciliationAct) "Reconciliation acts used"
* informs 1..1 Reference(CarePlanManifestation) "Resulting care plan manifestation"

Logical: CareDeliveryResource
Id: CareDeliveryResource
Title: "Care Delivery Resource"
Characteristics: #can-be-target
Description: "A resource used in care delivery"
Parent: CarePlanElement
* ^status = #active
* kind 1..1 CodeableConcept "Type of resource"
* identifier 1..1 Identifier "Identifier for the resource"
* meets 0..* Reference(ResourceRequirement) "Requirements this resource meets"
* supports 0..* Reference(ActivityExecution) "Activity executions this resource supports"

Logical: ResourceRequirement
Id: ResourceRequirement
Title: "Resource Requirement"
Characteristics: #can-be-target
Description: "A requirement for resources to perform an activity"
Parent: CarePlanElement
* ^status = #active
* kind 1..1 CodeableConcept "Type of resource required"
* quantity 1..1 Quantity "Quantity required"
