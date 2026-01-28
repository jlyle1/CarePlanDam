

Logical: Person
Id: person-logical-model
Title: "Person Logical Model"
Description: "A generic person model to be extended by other models."
Characteristics: #can-be-target
* name 1..* HumanName "A name associated with the person"
 
Logical: CPDPatient
Id: cpdpatient-logical-model
Title: "CPD Patient Logical Model"
Parent: Person
Characteristics: #can-be-target
Description: "A person for whom care is being provided."

Logical: CPDCareTeamMember
Id: cpdcareteammember-logical-model
Title: "CPD Care Team Member Logical Model"   
Parent: Person
Characteristics: #can-be-target
Description: "A provider, patient, caregiver, or other participant in the care team."


Instance: CPDPatientExample
InstanceOf: CPDPatient
Description: "An example of a patient with a license to krill."
* name
  * given[0] = "James"
  * family = "Pond"

Instance: CPDPractitionerRoleExample
InstanceOf: PractitionerRole
Description: "An example of a practitioner role for a care plan author."
* practitioner = Reference(CPDPractitionerExample)

Instance: CPDPractitionerExample
InstanceOf: Practitioner
Description: "An example of a practitioner for a care plan author."
* name
  * given[0] = "Mary"
  * family = "Smith"

Instance: CPDOrganizationExample
InstanceOf: Organization
Description: "An example of an organization for a care plan author."
* name = "The Very Big Corporation of America"

