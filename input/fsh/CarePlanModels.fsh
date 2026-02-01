// Complex logical models that use containment for multiple inheritance patterns
// Single inheritance via Parent:, additional mixins via containment

Logical: AcceptanceReview
Id: AcceptanceReview
Title: "Acceptance Review"
Characteristics: #can-be-target
Description: "A review where acknowledgment decisions are made about plan elements"
Parent: CarePlanElement
* ^status = #active
* partOf 1..1 PartOf "PartOf pattern properties"
* note 1..1 string "Notes from the review"
* decision 1..1 code "The acknowledgment decision"
* decision from AcknowledgementVS (required)
* mode 1..1 code "How the decision was made"
* mode from DecisionModeVS (required)
* trigger 1..1 code "What triggered this review"
* trigger from ReviewEventVS (required)
* reviews 1..* Reference(CarePlanElement) "Elements being reviewed"

Logical: OutcomeReview
Id: OutcomeReview
Title: "Outcome Review"
Characteristics: #can-be-target
Description: "A review assessing outcomes of performable elements"
Parent: CarePlanElement
* ^status = #active
* partOf 1..1 PartOf "PartOf pattern properties"
* note 1..1 string "Notes from the review"
* outcome 1..1 code "The assessed outcome"
* outcome from OutcomeVS (required)
* criterion 1..1 string "Criterion used for assessment"
* supportsGoal 0..* Reference(Goal) "Goals supported by this outcome"
* referencesExecution 0..* Reference(ActivityExecution) "Activity executions referenced"
* referencesObservation 0..* Reference(ActivityOutcomeObservation) "Observations referenced"

Logical: ActivityExecution
Id: ActivityExecution
Title: "Activity Execution"
Characteristics: #can-be-target
Description: "An execution of a planned activity"
Parent: CarePlanElement
* ^status = #active
* kind 1..1 CodeableConcept "Kind of activity execution"
* instantiates 0..1 Reference(PlannedActivity) "The planned activity being executed"
* assessedBy 0..* Reference(OutcomeReview) "Outcome reviews that assess this execution"

Logical: ActivityOutcomeObservation
Id: ActivityOutcomeObservation
Title: "Activity Outcome Observation"
Characteristics: #can-be-target
Description: "An observation characterizing the outcome of an activity execution"
Parent: CarePlanElement
* ^status = #active
* propertyAssessed 1..1 CodeableConcept "Property being assessed"
* result 1..1 string "Result of the observation"
* method 1..1 CodeableConcept "Method of observation"
* characterizes 0..1 Reference(ActivityExecution) "Activity execution being characterized"

Logical: CareTeam
Id: CareTeam
Title: "Care Team"
Characteristics: #can-be-target
Description: "A team of individuals involved in the patient's care. For more details, consult the Care Team Domain Analysis Model."
Parent: CarePlanElement
* ^status = #active
* acceptance 0..* Reference(AcceptanceReview) "Acceptance reviews for this element"
* name 1..1 string "Name of the care team"

Logical: Concern
Id: Concern
Title: "Concern"
Characteristics: #can-be-target
Description: "A health concern or condition addressed by the care plan"
Parent: CarePlanElement
* ^status = #active
// Contained mixins for multiple inheritance
* expressedBy 0..* Reference(CareTeamMember) "Who expressed this concern"
* revision 1..1 Revision "Revision pattern properties"
* Priority 1..1 Priority "Priority pattern properties"
* acceptance 0..* Reference(AcceptanceReview) "Acceptance reviews for this element"
* concern 1..1 CodeableConcept "The concern or condition"
* comment 1..1 string "Additional comments"

Logical: Goal
Id: Goal
Title: "Goal"
Characteristics: #can-be-target
Description: "A goal in the care plan. Possible relationship to concern, planned activity, performed activity, observation."
Parent: CarePlanElement
* ^status = #active
// Contained mixins for multiple inheritance
* partOf 1..1 PartOf "PartOf pattern properties"
* expressedBy 0..* Reference(CareTeamMember) "Who expressed this goal"
* acceptance 0..* Reference(AcceptanceReview) "Acceptance reviews for this element"
* assessedBy 0..* Reference(OutcomeReview) "Outcome reviews that assess this goal"
* Priority 1..1 Priority "Priority pattern properties"
* revision 1..1 Revision "Revision pattern properties"
// Goal-specific attributes
* desiredStateFinding 1..1 CodeableConcept "Finding representing the desired state"
* desiredStateMeasureDimension 1..1 CodeableConcept "Dimension for measuring desired state"
* desiredStateMeasureValue 1..1 Quantity "Target value for the desired state"
* targetDateTime 1..1 dateTime "Target date for achieving the goal"
* description 1..1 string "Text description of the goal"
* addresses 0..* Reference(Concern) "Concerns addressed by this goal"
* basedOnGuideline 0..* Reference(Guideline) "Guidelines this goal is based on"

Logical: CarePlanManifestation
Id: CarePlanManifestation
Title: "Care Plan Manifestation"
Characteristics: #can-be-target
Description: "A manifestation of a care plan - a specific instance of a care plan at a point in time"
Parent: CarePlanElement
* ^status = #active
// Contained mixins for multiple inheritance
* acceptance 0..* Reference(AcceptanceReview) "Acceptance reviews for this element"
* revision 1..1 Revision "Revision pattern properties"
* partOf 1..1 PartOf "PartOf pattern properties"
// CarePlanManifestation-specific attributes
* createDate 1..1 dateTime "Date the manifestation was created"
* specificationType 1..1 code "Type of specification"
* specificationType from SpecificationTypeVS (required)
* period 1..1 Period "Effective period of this manifestation"
* planPurpose 1..1 code "Purpose of the plan"
* planPurpose from PlanPurposeVS (required)
* status 1..1 CodeableConcept "Status of the manifestation"
* statusDate 1..1 dateTime "Date of the current status"
* displayName 1..1 string "Display name for the plan"
* description 1..1 string "Description of the plan"
* uses 0..* Reference(CarePlanDefinition) "Care plan definitions used"

Logical: PlannedActivity
Id: PlannedActivity
Title: "Planned Activity"
Characteristics: #can-be-target
Description: "An activity planned as part of the care plan"
Parent: CarePlanElement
* ^status = #active
// Contained mixins for multiple inheritance
* partOf 1..1 PartOf "PartOf pattern properties"
* acceptance 0..* Reference(AcceptanceReview) "Acceptance reviews for this element"
* Priority 1..1 Priority "Priority pattern properties"
* revision 1..1 Revision "Revision pattern properties"
// PlannedActivity-specific attributes
* targetPeriod 1..1 Period "Target time period for the activity"
* activity 1..1 CodeableConcept "The activity to be performed"
* classification 1..1 CodeableConcept "Classification of the activity"
* targetFrequency 1..1 Quantity "Target frequency of the activity"
* preCondition 1..1 CodeableConcept "Preconditions for the activity"
* postCondition 1..1 CodeableConcept "Expected postconditions"
* supportingContent 1..1 string "Supporting content or instructions"
* needs 0..* Reference(ResourceRequirement) "Resources needed"
* supports 0..* Reference(Goal) "Goals this activity supports"
* mitigatesRisk 0..* Reference(HealthRisk) "Health risks mitigated"
* presentsRisk 0..* Reference(HealthRisk) "Health risks presented by this activity"
* basedOnGuideline 0..* Reference(Guideline) "Guidelines this activity is based on"

Logical: Preference
Id: Preference
Title: "Preference"
Characteristics: #can-be-target
Description: "A patient or care team preference that informs care planning"
Parent: CarePlanElement
* ^status = #active
// Contained mixins for multiple inheritance
* acceptance 0..* Reference(AcceptanceReview) "Acceptance reviews for this element"
* Priority 1..1 Priority "Priority pattern properties"
* expressedBy 0..* Reference(CareTeamMember) "Who expressed this preference"
// Preference-specific attributes
* context 1..1 code "Context for the preference"
* context from PreferenceContextVS (required)
* description 1..1 string "Description of the preference"
* action 1..1 CodeableConcept "Preferred action"
* preferencePriority 1..1 CodeableConcept "Priority of this preference"
* reason 1..1 string "Reason for the preference"
* note 1..1 string "Additional notes"
* preferenceStatus 1..1 CodeableConcept "Status of the preference"
* informsActivity 0..* Reference(PlannedActivity) "Activities informed by this preference"
* informsGoal 0..* Reference(Goal) "Goals informed by this preference"

// Standalone models (no CarePlanElement parent)

Logical: Organization
Id: Organization
Title: "Organization"
Characteristics: #can-be-target
Description: "An organization involved in care delivery"
* ^status = #active
* name 1..1 string "Name of the organization"
* employs 1..* Reference(CareTeamMember) "Care team members employed"
* defines 0..* Reference(CareTeam) "Care teams defined by this organization"
* owns 0..* Reference(CarePlanManifestation) "Care plan manifestations owned"

Logical: CarePlanDefinition
Id: CarePlanDefinition
Title: "Care Plan Definition"
Characteristics: #can-be-target
Description: "A definition or template for care plans"
* ^status = #active
* name 1..1 code "Name of the care plan definition"
* name from CarePlanDefinitionVS (required)
* version 1..1 string "Version of the definition"
* url 1..1 url "URL for the definition"
