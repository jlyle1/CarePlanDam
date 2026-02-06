// MVC (Model-View-Controller) pattern models for Plan Manifestation
// Imported from mvc.xml - describes how care plans are manifested as documents, UIs, or API payloads

// =============================================================================
// Model Layer - Data Sources
// =============================================================================

Logical: Model
Id: Model
Title: "Model"
Characteristics: #can-be-target
Description: "Base class for the Model layer in MVC pattern - represents data sources"
* ^status = #active
* name 0..1 string "Name of the model"

Logical: RecordData
Id: RecordData
Title: "Record Data"
Characteristics: #can-be-target
Description: "Data from clinical records (EHR, CarePlan Application). Various record items (problems, medications, procedures) may be selected out of the EHR by a rule set, e.g., a CCD generator."
Parent: Model
* ^status = #active
* source 0..1 string "Source system for the data"

Logical: StructuredData
Id: StructuredData
Title: "Structured Data"
Characteristics: #can-be-target
Description: "Structured clinical data that can be processed programmatically"
Parent: RecordData
* ^status = #active
* format 0..1 CodeableConcept "Format of the structured data"

Logical: UnstructuredData
Id: UnstructuredData
Title: "Unstructured Data"
Characteristics: #can-be-target
Description: "Unstructured clinical data such as free text notes"
Parent: RecordData
* ^status = #active
* contentType 0..1 code "MIME type of the content"

Logical: CuratedPlanData
Id: CuratedPlanData
Title: "Curated Plan Data"
Characteristics: #can-be-target
Description: "Explicit plan record, usually with signature and date, possibly based on a definition, possibly resulting from merging & reconciliation of multiple plans."
Parent: StructuredData
* ^status = #active
* curatedDate 0..1 dateTime "Date the data was curated"
* curator 0..1 Reference(Resource) "Who curated the data"
* changeAndReconciliation 0..* ChangeAndReconciliationData "Change and reconciliation tracking"
* clinicianAssertions 0..* ClinicianAssertionOfPlanInclusion "Clinician assertions of plan inclusion"

// =============================================================================
// View Layer - Plan Manifestations
// =============================================================================

Logical: View
Id: View
Title: "View"
Characteristics: #can-be-target
Description: "Base class for the View layer in MVC pattern - represents plan manifestations (Paper Document, User Interface, API Payload)"
* ^status = #active
* viewType 0..1 CodeableConcept "Type of view"

Logical: APIPlanPayload
Id: APIPlanPayload
Title: "API Plan Payload"
Characteristics: #can-be-target
Description: "A care plan manifested as an API payload for system-to-system exchange"
Parent: View
* ^status = #active
* payloadFormat 0..1 code "Format of the API payload (e.g., FHIR, HL7v2)"
* endpoint 0..1 url "API endpoint"

Logical: PlanDocumentCurated
Id: PlanDocumentCurated
Title: "Plan Document (curated)"
Characteristics: #can-be-target
Description: "A care plan document that has been explicitly curated and authored"
Parent: View
* ^status = #active
* documentType 0..1 CodeableConcept "Type of document"
* author 0..1 Reference(Resource) "Author of the curated document"
* signatureDate 0..1 dateTime "Date signed"

Logical: PlanDocumentGenerated
Id: PlanDocumentGenerated
Title: "Plan Document (generated)"
Characteristics: #can-be-target
Description: "A care plan document generated automatically by rules or queries"
Parent: View
* ^status = #active
* generationDate 0..1 dateTime "Date generated"
* generatedBy 0..1 Reference(DocumentSpecification) "Specification used for generation"

Logical: PlanningFormView
Id: PlanningFormView
Title: "Planning Form (View)"
Characteristics: #can-be-target
Description: "A user interface form for viewing and entering care plan data"
Parent: View
* ^status = #active
* formName 0..1 string "Name of the form"

Logical: UIPlanView
Id: UIPlanView
Title: "UI Plan View"
Characteristics: #can-be-target
Description: "A user interface view of the care plan"
Parent: View
* ^status = #active
* uiType 0..1 CodeableConcept "Type of UI (dashboard, list, detail)"

// =============================================================================
// Controller Layer - Specifications
// =============================================================================

Logical: Controller
Id: Controller
Title: "Controller"
Characteristics: #can-be-target
Description: "Base class for the Controller layer in MVC pattern - represents specifications that control how data becomes manifestations"
* ^status = #active
* controllerType 0..1 CodeableConcept "Type of controller"

Logical: DocumentSpecification
Id: DocumentSpecification
Title: "Document Specification"
Characteristics: #can-be-target
Description: "Specification for generating plan documents (e.g., CCD, C-CDA templates)"
Parent: Controller
* ^status = #active
* templateId 0..1 string "Template identifier"
* templateVersion 0..1 string "Template version"

Logical: PayloadSpecification
Id: PayloadSpecification
Title: "Payload Specification"
Characteristics: #can-be-target
Description: "Specification for API payloads"
Parent: Controller
* ^status = #active
* profileUrl 0..1 url "FHIR profile or schema URL"
* version 0..1 string "Specification version"

Logical: PlanningFormController
Id: PlanningFormController
Title: "Planning Form (Controller)"
Characteristics: #can-be-target
Description: "Controller specification for a planning form UI"
Parent: Controller
* ^status = #active
* formDefinition 0..1 url "URL to form definition"

Logical: UISoftwareRules
Id: UISoftwareRules
Title: "UI Software Rules"
Characteristics: #can-be-target
Description: "Rules that control how data is presented in a UI plan view"
Parent: Controller
* ^status = #active
* ruleSet 0..1 string "Name of the rule set"

// =============================================================================
// Supporting Classes
// =============================================================================

Logical: DataSpecification
Id: DataSpecification
Title: "Data Specification"
Characteristics: #can-be-target
Description: "Profile, Template, Pathway, Protocol - specifications that define the structure and content of care plan data"
* ^status = #active
* specificationType 0..1 CodeableConcept "Type of specification"
* specificationUrl 0..1 url "URL to the specification"

Logical: HumanIntent
Id: HumanIntent
Title: "Human Intent"
Characteristics: #can-be-target
Description: "Abstract representation of human intention that drives care planning"
* ^status = #active
* intentDescription 0..1 string "Description of the intent"
* expressedBy 0..1 Reference(Resource) "Who expressed the intent"

Logical: SOAPNote
Id: SOAPNote
Title: "SOAP Note"
Characteristics: #can-be-target
Description: "Clinician plan in text. May be used to authorize orders or to create an explicit structured Plan."
Parent: UnstructuredData
* ^status = #active
* subjective 0..1 string "Subjective section"
* objective 0..1 string "Objective section"
* assessment 0..1 string "Assessment section"
* plan 0..1 string "Plan section"

Logical: ChangeAndReconciliationData
Id: ChangeAndReconciliationData
Title: "Change and Reconciliation Data"
Characteristics: #can-be-target
Description: "Data tracking changes and reconciliation of curated plan data"
* ^status = #active
* changeDate 0..1 dateTime "Date of change"
* changeType 0..1 CodeableConcept "Type of change"
* reconciledFrom 0..* Reference(CuratedPlanData) "Source plans reconciled"

Logical: ClinicianAssertionOfPlanInclusion
Id: ClinicianAssertionOfPlanInclusion
Title: "Clinician Assertion of Plan Inclusion"
Characteristics: #can-be-target
Description: "A clinician's assertion that specific items should be included in the plan"
* ^status = #active
* assertionDate 0..1 dateTime "Date of assertion"
* assertedBy 0..1 Reference(Resource) "Clinician making the assertion"
* includedItems 0..* Reference(Resource) "Items asserted for inclusion"