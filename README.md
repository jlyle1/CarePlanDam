# CarePlanDam

This is test of the hypothesis that a DAM can be expressed as a logical model.

StructureDefinition is an information modeling tool. Dynamic UML views will not be supported. In the case of interoperability specifications, this is not a problem, as interoperability specifications detail payloads exchanged by compliant systems, not system functionality. The clinical context in which these information conforming to these models is exchanged can be addressed by less formal human-readable pages.

If we find it necessary, we may look at using Task with GraphDefinition for this purpose.

We adopt the following equivalences:
* UML Class -> StructureDefinition
* UML Attribute -> StructureDefinition Element
* UML Enumeration -> CodeSystem and ValueSet
* UML Association -> Reference
* UML Single Inheritance -> StructureDefinition.baseDefinition
* UML Multiple Inheritance / Interface -> ?
**      Extension?
**      Containment?
