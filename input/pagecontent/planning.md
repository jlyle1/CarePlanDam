# Planning Use Case

The Planning use case covers the creation and management of care plan content - the goals, activities, concerns, and preferences that constitute the process of planning. It does not necesarily imply the creation of an identifiable "Care Plan" artifact. 

## Overview

Care planning involves identifying patient concerns, setting goals, and planning activities to achieve those goals. This use case focuses on the content elements that comprise a care plan.

## Key Models

### Goal

A goal represents a desired outcome for the patient. Goals:
- Address one or more Concerns
- May be based on clinical Guidelines
- Can be organized hierarchically (via PartOf)
- Have priority and revision tracking
- Can be assessed via OutcomeReview

### Planned Activity

A planned activity represents an action planned as part of care. Activities:
- Support one or more Goals
- May mitigate or present Health Risks
- Can be based on clinical Guidelines
- Have target periods and frequencies
- Include pre/post conditions

### Concern

A concern represents a health concern or condition being addressed. Concerns:
- Are addressed by Goals
- May be addressed by Guidelines
- Can be expressed by CareTeamMembers
- Have priority and revision tracking

### Preference

A preference represents patient or care team preferences that inform planning. Preferences:
- Inform Goals and/or Activities
- Have context and priority
- Can be expressed by CareTeamMembers

## Supporting Models

- **Barrier** - Factors that impede progress toward goals or activities
- **Health Risk** - Identified health risks for the patient
- **Protective Factor** - Factors that protect against risks or barriers
- **Guideline** - Clinical guidelines that inform the care plan
