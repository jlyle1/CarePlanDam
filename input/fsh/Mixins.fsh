// Abstract "mixin" logical models for reuse via containment
// These represent behavioral patterns that can be composed into other models

Logical: Acknowledgeable
Id: Acknowledgeable
Title: "Acknowledgeable"
Description: "Abstract pattern for elements that can be acknowledged or agreed upon"
* ^abstract = true
* ^status = #active

Logical: Performable
Id: Performable
Title: "Performable"
Description: "Abstract pattern for elements that have a performance lifecycle"
* ^abstract = true
* ^status = #active
* performancePeriod 1..1 Period "Time period during which the element is performed"
* status 1..1 code "Current performance status"
* status from PerformanceStatusVS (required)

Logical: Composable
Id: Composable
Title: "Composable"
Description: "Abstract pattern for elements that can be organized hierarchically"
* ^abstract = true
* ^status = #active
* order 1..1 integer "Order within the parent composition"
* constitutive 1..1 code "Whether this element is constitutive of the parent"
* partOf 0..1 Reference(Composable) "Parent composable element"

Logical: Expressible
Id: Expressible
Title: "Expressible"
Description: "Abstract pattern for elements that can be expressed by a care team member"
* ^abstract = true
* ^status = #active

Logical: Prioritizable
Id: Prioritizable
Title: "Prioritizable"
Description: "Abstract pattern for elements that can be prioritized"
* ^abstract = true
* ^status = #active
* priority 1..1 integer "Priority ranking"
* dateAssigned 1..1 dateTime "Date the priority was assigned"
* withRespectTo 0..1 Reference(Prioritizable) "Context for relative priority"

Logical: Revisable
Id: Revisable
Title: "Revisable"
Description: "Abstract pattern for elements that can be revised over time"
* ^abstract = true
* ^status = #active
* substantive 1..1 code "Whether the revision is substantive"
* revisionDate 1..1 dateTime "Date of this revision"
* version 1..1 integer "Version number"
* revises 0..1 Reference(Revisable) "Previous version being revised"
* basedOn 0..* Reference(Review) "Reviews that informed this revision"

Logical: Review
Id: Review
Title: "Review"
Description: "Abstract pattern for review activities"
Parent: Composable
* ^abstract = true
* ^status = #active
* note 1..1 string "Notes from the review"
