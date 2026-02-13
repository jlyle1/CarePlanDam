// Abstract "mixin" logical models for reuse via containment
// These represent behavioral patterns that can be composed into other models

Logical: PartOf
Id: PartOf
Title: "PartOf"
Description: "Abstract pattern for elements that can be organized in hierarchical compositions"
* ^abstract = true
* ^status = #active
* order 1..1 integer "Order within the parent composition"
* constitutive 1..1 code "Whether this element is constitutive of the parent"
* parent 0..1 Reference(Resource) "Parent element"

Logical: Priority
Id: Priority
Title: "Priority"
Characteristics: #can-be-target
Description: "Abstract pattern for elements that can be prioritized"
* ^abstract = true
* ^status = #active
* priority 1..1 integer "Priority ranking"
* dateAssigned 1..1 dateTime "Date the priority was assigned"
* withRespectTo 0..1 Reference(Priority) "Context for relative priority"

Logical: Revision
Id: Revision
Title: "Revision"
Description: "Abstract pattern for elements that can be revised over time"
* ^abstract = true
* ^status = #active
* substantive 1..1 code "Whether the revision is substantive"
* revisionDate 1..1 dateTime "Date of this revision"
* version 1..1 integer "Version number"
* revises 0..1 Reference(Resource) "Previous version being revised (of same type as containing class)"
* basedOn 0..* Reference(AcceptanceReview or OutcomeReview) "Reviews that informed this revision"
