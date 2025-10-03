// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: CPDPatient
Parent: Patient
Description: "An example profile of the Patient resource."
* name 1..* MS

Instance: CPDPatientExample
InstanceOf: CPDPatient
Description: "An example of a patient with a license to krill."
* name
  * given[0] = "James"
  * family = "Pond"

Instance: CPDPractitionerRoleExample
InstanceOf: PractitionerRole
Description: "An example of a practitioner role for a care plan author."
* practitioner 0..1 Reference (CPDPractitionerExample) 

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