# Conventions

A Domain Analysis Model (DAM) is intended to be technology-agnostic, as far as possible, so that it can be inform any design format and be implemented in any technology. As it turns out, the format for documenting an analysis is itself a technology, and it may present its own challenges. 

The prior version of this model was written in the Universal Modeling Language (UML). This formalism is not as clear to everyone as it is to analysts, so, notwithstanding the aspiration of having a universal language, DAMs that use UML tend to include a Conventions section to orient those unfamiliar with UML. 

In addition to the need to spell out conventions, the UML model was difficult to make accessible to the widest possible audience. The FHIR IG framework provides a way to publish a model and make it immediately accessible to anyone in the world.

This is the first instance of which we are aware that presents an Analysis model in FHIR, and we solicit constructive criticism.

# Model facets

Standard representations of information are critical to the ability of systems use to communicate, and this need is the primary motivating factor for the existence of HL7. For this reason, most HL7 standards focus on information models.

Behavior is a fundamental facet of these specifications, as it is behavior that scopes the transfer of information. Orders, queries, acknowledgements and updates are fundamentally different sorts of interactions, and they require different information models. The details of how a stakeholder fufills those interactions, however, are the concern of the stakeholder, and should have no effect on the interoperability scenario. 

As a result, the behavioral model is general: it does not specify much detail. The use cases in this DAM are specified as names of interactions with characteristic payloads; they are no more detailed than the Trigger definitions in HL7 V2.

There are cases where an HL7 workgroup specifies system behavior, but these remain very high level, and where they exist, they support very mature domains where stakeholders have converged on standard functionality.

The other limit on the scope of a DAM for  interoperability specifications, as opposed to a new software development effort, is that new software typically strives to re-engineer processes to add value not previously available. Interoperability specifications, on the other hand, deliver value by facilitating communication among existing systems.  Since the interdisciplinary Care Plan does not have a mature and stable installed base, there is little consensus on the details of its implementation. As a result, we outline some functionality to manage coordination and reconciliation, but we do not provide as much detail as we do for more mature areas.

# Requirements

We propose N use cases designed to illustrate general functional areas for the Care Plan. We do not decompose these cases into requirements statements.

# Dynamic modeling

In line with above remarks, formalizing use cases with interaction diagrams and complex process logic is outside the scope of a DAM, which seeks to enable system interoperability, not to govern system behavior. The Use Case pages describe scenarios, and those scenarios call Operations by name. Operations define input parameters and output payloads, similar to V2 Triggers.

# Information modeling

The bulk of this specification describes a static information model that supports the payloads described above. The fact that the model is static does not [address the 'dynamic plan' issue]

Classes are logical models, using the "logical" kind rather than "Profile" on a Resource, with a baseDefinition of StructureDefinition/Base. 

Since the FHIR publication machinery may dereference names preferentially to FHIR resources, rather than to logical models defined here, we have prefixed these with the DAM. E.g., CarePlanGoal rather than Goal, even though the model makes no presumption that the goal is necesarily part of a Care Plan.

Since StructureDefinition only supports single inheritance, and the framework does not have a concept of an "interface class", we support common capabilities with containment. E.g., for the "capacity to be revised", rather than declare a parent or interface "Revisable" model, we define a "Revision" model that any revisable model can contain as an element of type "Revision". 

The containment design does not support the sharing of Operations, which will be supported simply with the model-specific scoping of the Operation definitions.

We considered using a generic set of "analysis" data types. This impulse, like the impulse to use UML, was driven by the desire to make the analysis model technology-agnostic, and like with that decision, we decided against it because the analysis types wouldn't be technology-agnostic; they'd be yet another technology. The types are not intended to be conformance criteria, but rather semantic specifications of content. 

Class elements are represented as StructureDefinition elements.

Relationships are represented as references.

Enumerations are represented as ValueSets.

We package Classes into Groups, but it is not obvious that this is helpful. It will support the linking of package classes on identified pages, and there may be other uses.

StructureDefinition has no graphical capability, so we
a) create Class Diagrams in ascii-art
b) create Class Diagrams in Mermaid and embed graphics
c) create Class Diagrams as resource graphs in ClinFHIR 
 
Each use case includes a set of Example models.

| UML | FHIR Logical Models IG |
|-----|------------------------|
| Class | Logical Model |
| Single inheritance | baseDefinition |
| Multiple inheritance | Composition |
| Attribute | element |
| UML data type | FHIR data type |
| Relationship | reference |
| Enumeration | ValueSet |
| Use Case text | Text use case |
| Use Case model element | Operation |
| Diagram | tbd |