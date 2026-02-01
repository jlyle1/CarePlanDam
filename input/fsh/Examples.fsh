// Example instances from the UML model - NICU Care Plan scenario
// Note: Logical model instances reference actual FHIR resources for Patient/Practitioner

// =============================================================================
// FHIR Resource Instances (for reference targets)
// =============================================================================

Instance: PatientBabySmith
InstanceOf: Patient
Title: "Baby Smith"
Description: "NICU patient - premature infant"
Usage: #example
* name.given = "Baby"
* name.family = "Smith"
* birthDate = "2025-01-10"
* gender = #male

Instance: PractitionerNurse
InstanceOf: Practitioner
Title: "NICU Nurse"
Description: "Primary NICU nurse"
Usage: #example
* name.given = "Sarah"
* name.family = "Johnson"
* qualification.code.coding.system = "http://snomed.info/sct"
* qualification.code.coding.code = #224535009
* qualification.code.coding.display = "Neonatal nurse"

Instance: PractitionerPhysician
InstanceOf: Practitioner
Title: "NICU Physician"
Description: "Attending neonatologist"
Usage: #example
* name.given = "Michael"
* name.family = "Chen"
* qualification.code.coding.system = "http://snomed.info/sct"
* qualification.code.coding.code = #28411006
* qualification.code.coding.display = "Neonatologist"

// =============================================================================
// Logical Model Instances - Care Team Members
// =============================================================================

Instance: CareTeamMemberNurse
InstanceOf: CareTeamMember
Title: "NICU Nurse - Care Team Member"
Description: "Primary NICU nurse caring for the infant"
Usage: #example
* refersTo = Reference(PatientBabySmith)
* hasAuthor = Reference(PractitionerNurse)
* name = "Sarah Johnson, RN"
* role.coding.system = "http://snomed.info/sct"
* role.coding.code = #224535009
* role.coding.display = "Neonatal nurse"

Instance: CareTeamMemberPhysician
InstanceOf: CareTeamMember
Title: "NICU Physician - Care Team Member"
Description: "Attending neonatologist"
Usage: #example
* refersTo = Reference(PatientBabySmith)
* hasAuthor = Reference(PractitionerPhysician)
* name = "Dr. Michael Chen, MD"
* role.coding.system = "http://snomed.info/sct"
* role.coding.code = #28411006
* role.coding.display = "Neonatologist"

// =============================================================================
// Logical Model Instances - Concern
// =============================================================================

Instance: ConcernPrematurity
InstanceOf: Concern
Title: "Prematurity"
Description: "Health concern: infant born prematurely"
Usage: #example
* refersTo = Reference(PatientBabySmith)
* hasAuthor = Reference(PractitionerPhysician)
* revision.substantive = #true
* revision.revisionDate = "2025-01-15T10:00:00Z"
* revision.version = 1
* Priority.priority = 1
* Priority.dateAssigned = "2025-01-15T10:00:00Z"
* concern.coding.system = "http://snomed.info/sct"
* concern.coding.code = #395507008
* concern.coding.display = "Premature infant"
* comment = "Infant born at 32 weeks gestation"

// =============================================================================
// Logical Model Instances - Goals
// =============================================================================

Instance: GoalDischargeFromNICU
InstanceOf: Goal
Title: "Discharge from NICU"
Description: "Primary goal for NICU patient: discharge from the unit"
Usage: #example
* refersTo = Reference(PatientBabySmith)
* hasAuthor = Reference(PractitionerPhysician)
* partOf.order = 1
* partOf.constitutive = #true
* Priority.priority = 1
* Priority.dateAssigned = "2025-01-15T10:00:00Z"
* revision.substantive = #true
* revision.revisionDate = "2025-01-15T10:00:00Z"
* revision.version = 1
* desiredStateFinding.coding.system = "http://snomed.info/sct"
* desiredStateFinding.coding.code = #306689006
* desiredStateFinding.coding.display = "Discharge to home"
* desiredStateMeasureDimension.coding.system = "http://loinc.org"
* desiredStateMeasureDimension.coding.code = #LA9622-7
* desiredStateMeasureDimension.coding.display = "Discharge disposition"
* desiredStateMeasureValue.value = 1
* desiredStateMeasureValue.unit = "event"
* targetDateTime = "2025-02-28T12:00:00Z"
* description = "Discharge from NICU"

Instance: GoalWeightGain
InstanceOf: Goal
Title: "Weight gain"
Description: "Supporting goal: infant achieves adequate weight gain"
Usage: #example
* refersTo = Reference(PatientBabySmith)
* hasAuthor = Reference(PractitionerNurse)
* partOf.order = 1
* partOf.constitutive = #false
* Priority.priority = 2
* Priority.dateAssigned = "2025-01-15T11:00:00Z"
* revision.substantive = #true
* revision.revisionDate = "2025-01-15T11:00:00Z"
* revision.version = 1
* desiredStateFinding.coding.system = "http://snomed.info/sct"
* desiredStateFinding.coding.code = #8943002
* desiredStateFinding.coding.display = "Weight gain"
* desiredStateMeasureDimension.coding.system = "http://loinc.org"
* desiredStateMeasureDimension.coding.code = #29463-7
* desiredStateMeasureDimension.coding.display = "Body weight"
* desiredStateMeasureValue.value = 2500
* desiredStateMeasureValue.unit = "g"
* desiredStateMeasureValue.system = "http://unitsofmeasure.org"
* desiredStateMeasureValue.code = #g
* targetDateTime = "2025-02-15T12:00:00Z"
* description = "Weight gain"

Instance: GoalOnRoomAir
InstanceOf: Goal
Title: "On room air"
Description: "Supporting goal: infant can breathe room air without supplemental oxygen"
Usage: #example
* refersTo = Reference(PatientBabySmith)
* hasAuthor = Reference(PractitionerPhysician)
* partOf.order = 2
* partOf.constitutive = #false
* Priority.priority = 2
* Priority.dateAssigned = "2025-01-15T11:00:00Z"
* revision.substantive = #true
* revision.revisionDate = "2025-01-15T11:00:00Z"
* revision.version = 1
* desiredStateFinding.coding.system = "http://snomed.info/sct"
* desiredStateFinding.coding.code = #722742002
* desiredStateFinding.coding.display = "Breathing room air"
* desiredStateMeasureDimension.coding.system = "http://loinc.org"
* desiredStateMeasureDimension.coding.code = #3150-0
* desiredStateMeasureDimension.coding.display = "Inhaled oxygen concentration"
* desiredStateMeasureValue.value = 21
* desiredStateMeasureValue.unit = "%"
* desiredStateMeasureValue.system = "http://unitsofmeasure.org"
* desiredStateMeasureValue.code = #%
* targetDateTime = "2025-02-20T12:00:00Z"
* description = "On room air"

Instance: GoalOnOralNutrition
InstanceOf: Goal
Title: "On oral nutrition"
Description: "Supporting goal: infant can take nutrition orally"
Usage: #example
* refersTo = Reference(PatientBabySmith)
* hasAuthor = Reference(PractitionerNurse)
* partOf.order = 3
* partOf.constitutive = #false
* Priority.priority = 2
* Priority.dateAssigned = "2025-01-15T11:00:00Z"
* revision.substantive = #true
* revision.revisionDate = "2025-01-15T11:00:00Z"
* revision.version = 1
* desiredStateFinding.coding.system = "http://snomed.info/sct"
* desiredStateFinding.coding.code = #289155004
* desiredStateFinding.coding.display = "Able to take oral feeding"
* desiredStateMeasureDimension.coding.system = "http://loinc.org"
* desiredStateMeasureDimension.coding.code = #80469-0
* desiredStateMeasureDimension.coding.display = "Infant formula intake 24 hour"
* desiredStateMeasureValue.value = 150
* desiredStateMeasureValue.unit = "mL/kg/day"
* desiredStateMeasureValue.system = "http://unitsofmeasure.org"
* desiredStateMeasureValue.code = #mL/kg/d
* targetDateTime = "2025-02-18T12:00:00Z"
* description = "On oral nutrition"

Instance: GoalCaregiverEducation
InstanceOf: Goal
Title: "Caregiver education"
Description: "Supporting goal: caregivers are educated on infant care"
Usage: #example
* refersTo = Reference(PatientBabySmith)
* hasAuthor = Reference(PractitionerNurse)
* partOf.order = 4
* partOf.constitutive = #false
* Priority.priority = 3
* Priority.dateAssigned = "2025-01-15T11:00:00Z"
* revision.substantive = #true
* revision.revisionDate = "2025-01-15T11:00:00Z"
* revision.version = 1
* desiredStateFinding.coding.system = "http://snomed.info/sct"
* desiredStateFinding.coding.code = #410265008
* desiredStateFinding.coding.display = "Education completed"
* desiredStateMeasureDimension.coding.system = "http://loinc.org"
* desiredStateMeasureDimension.coding.code = #LA9618-5
* desiredStateMeasureDimension.coding.display = "Caregiver readiness"
* desiredStateMeasureValue.value = 100
* desiredStateMeasureValue.unit = "%"
* desiredStateMeasureValue.system = "http://unitsofmeasure.org"
* desiredStateMeasureValue.code = #%
* targetDateTime = "2025-02-25T12:00:00Z"
* description = "Caregiver education"

// =============================================================================
// Logical Model Instances - Planned Activities
// =============================================================================

Instance: PlannedActivityWeighInfant
InstanceOf: PlannedActivity
Title: "Weigh infant daily"
Description: "Daily weight measurement activity"
Usage: #example
* refersTo = Reference(PatientBabySmith)
* hasAuthor = Reference(PractitionerNurse)
* partOf.order = 1
* partOf.constitutive = #true
* Priority.priority = 1
* Priority.dateAssigned = "2025-01-15T11:00:00Z"
* revision.substantive = #true
* revision.revisionDate = "2025-01-15T11:00:00Z"
* revision.version = 1
* targetPeriod.start = "2025-01-15"
* targetPeriod.end = "2025-02-28"
* activity.coding.system = "http://snomed.info/sct"
* activity.coding.code = #39857003
* activity.coding.display = "Weighing patient"
* classification.coding.system = "http://example.org/activity-classification"
* classification.coding.code = #assessment
* classification.coding.display = "Assessment"
* targetFrequency.value = 1
* targetFrequency.unit = "per day"
* targetFrequency.system = "http://unitsofmeasure.org"
* targetFrequency.code = #/d
* preCondition.coding.system = "http://example.org/preconditions"
* preCondition.coding.code = #infant-stable
* preCondition.coding.display = "Infant clinically stable"
* postCondition.coding.system = "http://example.org/postconditions"
* postCondition.coding.code = #weight-recorded
* postCondition.coding.display = "Weight recorded in chart"
* supportingContent = "Use calibrated infant scale. Weigh at same time each day, before feeding."

Instance: PlannedActivityRespiratoryAssessment
InstanceOf: PlannedActivity
Title: "Respiratory assessment"
Description: "Regular respiratory status assessment"
Usage: #example
* refersTo = Reference(PatientBabySmith)
* hasAuthor = Reference(PractitionerNurse)
* partOf.order = 2
* partOf.constitutive = #true
* Priority.priority = 1
* Priority.dateAssigned = "2025-01-15T11:00:00Z"
* revision.substantive = #true
* revision.revisionDate = "2025-01-15T11:00:00Z"
* revision.version = 1
* targetPeriod.start = "2025-01-15"
* targetPeriod.end = "2025-02-28"
* activity.coding.system = "http://snomed.info/sct"
* activity.coding.code = #70082004
* activity.coding.display = "Respiratory function assessment"
* classification.coding.system = "http://example.org/activity-classification"
* classification.coding.code = #assessment
* classification.coding.display = "Assessment"
* targetFrequency.value = 4
* targetFrequency.unit = "per day"
* targetFrequency.system = "http://unitsofmeasure.org"
* targetFrequency.code = #/d
* preCondition.coding.system = "http://example.org/preconditions"
* preCondition.coding.code = #no-active-intervention
* preCondition.coding.display = "No active respiratory intervention in progress"
* postCondition.coding.system = "http://example.org/postconditions"
* postCondition.coding.code = #assessment-documented
* postCondition.coding.display = "Assessment documented"
* supportingContent = "Assess respiratory rate, effort, oxygen saturation. Document any supplemental oxygen requirements."

Instance: PlannedActivityFeeding
InstanceOf: PlannedActivity
Title: "Oral feeding advancement"
Description: "Gradual advancement of oral feeding"
Usage: #example
* refersTo = Reference(PatientBabySmith)
* hasAuthor = Reference(PractitionerNurse)
* partOf.order = 3
* partOf.constitutive = #true
* Priority.priority = 1
* Priority.dateAssigned = "2025-01-15T11:00:00Z"
* revision.substantive = #true
* revision.revisionDate = "2025-01-15T11:00:00Z"
* revision.version = 1
* targetPeriod.start = "2025-01-15"
* targetPeriod.end = "2025-02-28"
* activity.coding.system = "http://snomed.info/sct"
* activity.coding.code = #230125005
* activity.coding.display = "Oral feeding"
* classification.coding.system = "http://example.org/activity-classification"
* classification.coding.code = #intervention
* classification.coding.display = "Intervention"
* targetFrequency.value = 8
* targetFrequency.unit = "per day"
* targetFrequency.system = "http://unitsofmeasure.org"
* targetFrequency.code = #/d
* preCondition.coding.system = "http://example.org/preconditions"
* preCondition.coding.code = #suck-swallow-present
* preCondition.coding.display = "Suck-swallow reflex present"
* postCondition.coding.system = "http://example.org/postconditions"
* postCondition.coding.code = #intake-recorded
* postCondition.coding.display = "Intake volume recorded"
* supportingContent = "Start with small volumes, advance as tolerated. Monitor for feeding intolerance signs."

// =============================================================================
// Logical Model Instances - Activity Executions
// =============================================================================

Instance: ActivityExecutionWeighing
InstanceOf: ActivityExecution
Title: "Weight measurement execution"
Description: "Execution of daily weight measurement"
Usage: #example
* refersTo = Reference(PatientBabySmith)
* hasAuthor = Reference(PractitionerNurse)
* kind.coding.system = "http://snomed.info/sct"
* kind.coding.code = #39857003
* kind.coding.display = "Weighing patient"

Instance: ActivityExecutionRespiratoryAssessment
InstanceOf: ActivityExecution
Title: "Respiratory assessment execution"
Description: "Execution of respiratory status assessment"
Usage: #example
* refersTo = Reference(PatientBabySmith)
* hasAuthor = Reference(PractitionerNurse)
* kind.coding.system = "http://snomed.info/sct"
* kind.coding.code = #70082004
* kind.coding.display = "Respiratory function assessment"

Instance: ActivityExecutionFeeding
InstanceOf: ActivityExecution
Title: "Feeding execution"
Description: "Execution of oral feeding activity"
Usage: #example
* refersTo = Reference(PatientBabySmith)
* hasAuthor = Reference(PractitionerNurse)
* kind.coding.system = "http://snomed.info/sct"
* kind.coding.code = #230125005
* kind.coding.display = "Oral feeding"

// =============================================================================
// Logical Model Instances - Activity Outcome Observations
// =============================================================================

Instance: ObservationBodyWeight
InstanceOf: ActivityOutcomeObservation
Title: "Body weight observation"
Description: "Observation of infant body weight (LOINC 29463-7)"
Usage: #example
* refersTo = Reference(PatientBabySmith)
* hasAuthor = Reference(PractitionerNurse)
* propertyAssessed.coding.system = "http://loinc.org"
* propertyAssessed.coding.code = #29463-7
* propertyAssessed.coding.display = "Body weight"
* result = "2350 grams"
* method.coding.system = "http://snomed.info/sct"
* method.coding.code = #258104002
* method.coding.display = "Digital scale"

Instance: ObservationRespiratoryStatus
InstanceOf: ActivityOutcomeObservation
Title: "Respiratory status observation"
Description: "Observation of respiratory status (LOINC 53756-3)"
Usage: #example
* refersTo = Reference(PatientBabySmith)
* hasAuthor = Reference(PractitionerNurse)
* propertyAssessed.coding.system = "http://loinc.org"
* propertyAssessed.coding.code = #53756-3
* propertyAssessed.coding.display = "Respiratory status finding"
* result = "Stable on room air, SpO2 98%"
* method.coding.system = "http://snomed.info/sct"
* method.coding.code = #252465000
* method.coding.display = "Pulse oximetry"

Instance: ObservationInfantFormulaIntake
InstanceOf: ActivityOutcomeObservation
Title: "Infant formula intake observation"
Description: "Observation of infant formula intake over 24 hours (LOINC 80469-0)"
Usage: #example
* refersTo = Reference(PatientBabySmith)
* hasAuthor = Reference(PractitionerNurse)
* propertyAssessed.coding.system = "http://loinc.org"
* propertyAssessed.coding.code = #80469-0
* propertyAssessed.coding.display = "Infant formula intake 24 hour Measured"
* result = "145 mL/kg/day oral intake"
* method.coding.system = "http://snomed.info/sct"
* method.coding.code = #129006008
* method.coding.display = "Measurement"

// =============================================================================
// Logical Model Instances - Outcome Reviews
// =============================================================================

Instance: OutcomeReviewWeightStabilized
InstanceOf: OutcomeReview
Title: "Weight stabilized"
Description: "Outcome review: weight has stabilized"
Usage: #example
* refersTo = Reference(PatientBabySmith)
* hasAuthor = Reference(PractitionerNurse)
* partOf.order = 1
* partOf.constitutive = #true
* note = "Infant weight has stabilized with consistent daily gains of 20-30g"
* outcome = #stabilized
* criterion = "Weight stable or increasing for 3 consecutive days"

Instance: OutcomeReviewRespiratoryResolved
InstanceOf: OutcomeReview
Title: "Respiratory status resolved"
Description: "Outcome review: respiratory issues resolved"
Usage: #example
* refersTo = Reference(PatientBabySmith)
* hasAuthor = Reference(PractitionerPhysician)
* partOf.order = 2
* partOf.constitutive = #true
* note = "Respiratory status has resolved - infant maintaining SpO2 >95% on room air"
* outcome = #resolved
* criterion = "No supplemental oxygen required for 48 hours"

Instance: OutcomeReviewNutritionImproved
InstanceOf: OutcomeReview
Title: "Nutrition improved"
Description: "Outcome review: oral nutrition intake improved"
Usage: #example
* refersTo = Reference(PatientBabySmith)
* hasAuthor = Reference(PractitionerNurse)
* partOf.order = 3
* partOf.constitutive = #true
* note = "Oral nutrition has improved - infant tolerating full oral feeds"
* outcome = #improved
* criterion = "Taking full feeds orally (>140 mL/kg/day)"
