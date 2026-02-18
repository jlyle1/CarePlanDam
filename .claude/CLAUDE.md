# CarePlanDAM Project Context

## Domain: HL7 FHIR Healthcare Interoperability

This project involves HL7 FHIR implementation guides and healthcare data standards. When answering questions, assume familiarity with:

### Core Specifications
- **FHIR R4** (v4.0.1) - https://hl7.org/fhir/R4/
- **US Core STU6** - https://hl7.org/fhir/us/core/STU6/
- **SMART App Launch** - https://hl7.org/fhir/smart-app-launch/
- **Bulk FHIR (Bulk Data Access)** - https://build.fhir.org/ig/HL7/bulk-data/

### Key FHIR Resources for This Project
- Goal, CarePlan, Observation, Condition
- Patient, Practitioner, Organization
- ServiceRequest, Procedure

### US Regulatory Context

#### HTI-5 Proposed Rule (December 2025)
Published December 29, 2025. Comment period ends February 27, 2026.

**Key provisions:**
- Removes 34 of 60 certification criteria (~57%), revises 7 others
- Estimated 1.4 million compliance hours saved industry-wide
- Removes document-based exchange (CDA) requirements
- Removes AI model card transparency requirements
- Makes FHIR-only Insights reporting permanent
- Expands information blocking definitions to include "automated and AI-driven processes"
- Removes/narrows exceptions that allowed data blocking via technical or contractual loopholes
- Standards adoption via SVAP (Standards Version Advancement Process) becomes primary path

**Focus:** Redirects certification toward FHIR-based APIs per 21st Century Cures Act mandate.

#### HTI-2 Final Rule (December 2024)
- TEFCA Manner Exception for Information Blocking
- FHIR API Exchange Manner Exception expanded to include advanced FHIR versions via SVAP
- Administrative changes to certification requirements

#### Prior Rules
- **HTI-1** (2024): Established baseline certification criteria, USCDI v3
- **HTI-4** (2025): Electronic prescribing, real-time prescription benefit, prior authorization

### Project-Specific Notes
- This appears to be a FHIR Implementation Guide project
- Uses SUSHI (FSH) for resource definitions
- PlantUML for diagrams in `input/images-source/`