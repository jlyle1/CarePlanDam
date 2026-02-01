# Reconciliation Use Case

The Reconciliation use case covers merging care plans from different sources, with attendant questions about provenance, authority, and audience roles.

## Overview

Care plan reconciliation addresses the need to merge:
- Versions of a plan maintained in different places
- Diverse specific plans into overarching plans

This is essential for care coordination when patients have multiple providers or care settings.

## Key Models

### Reconciliation Log

A reconciliation log documents the reconciliation activity. It:
- Records the date of reconciliation
- Aggregates multiple CarePlanManifestations
- Uses ReconciliationActs to perform the merge
- Produces a resulting CarePlanManifestation

### Reconciliation Act

A reconciliation act represents an individual action taken during reconciliation. Acts:
- Have a role in the reconciliation
- Include notes about decisions made
- Are performed by CareTeamMembers

### Acceptance Review

An acceptance review is where acknowledgment decisions are made about plan elements. Reviews:
- Assess plan elements for acceptance
- Record decisions (accept, reject, etc.)
- Track decision mode and trigger
- Support the revision process

### Outcome Review

An outcome review assesses the outcomes of activities and goals. Reviews:
- Assess outcomes against criteria
- Reference ActivityExecutions and Observations
- Support goals being evaluated
- Inform future revisions

## Reconciliation Process

1. Identify CarePlanManifestations to reconcile
2. Create ReconciliationLog to track the process
3. Perform ReconciliationActs to resolve differences
4. Conduct AcceptanceReviews for disputed elements
5. Produce reconciled CarePlanManifestation
