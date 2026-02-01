# Examples

This page illustrates the Care Plan DAM with a concrete example: a NICU (Neonatal Intensive Care Unit) discharge care plan.

## NICU Discharge Care Plan

This example shows a care plan for an infant in the NICU with the primary goal of discharge. The plan includes supporting goals for weight gain, respiratory status, nutrition, and caregiver education, along with observations and outcome reviews tracking progress.

### Instance Diagram

<img src="nicu-example.png" alt="NICU Care Plan Example Diagram" style="width:100%;max-width:800px;"/>

### Goals

The care plan has a hierarchical goal structure:

| Goal | Description | Supports |
|------|-------------|----------|
| Discharge from NICU | Primary goal for the infant | - |
| Weight gain | Infant achieves adequate weight gain | Discharge from NICU |
| On room air | Infant can breathe without supplemental oxygen | Discharge from NICU |
| On oral nutrition | Infant can take nutrition orally | Discharge from NICU |
| Caregiver education | Caregivers are educated on infant care | Discharge from NICU |

### Observations

Progress is tracked via ActivityOutcomeObservations using LOINC codes:

| Observation | LOINC Code | Description |
|-------------|------------|-------------|
| Body weight | 29463-7 | Measures infant weight |
| Respiratory status finding | 53756-3 | Assesses respiratory function |
| Infant formula intake 24 hour | 80469-0 | Tracks nutrition intake |

### Outcome Reviews

OutcomeReviews assess progress toward goals based on observations:

| Review | Outcome | Observation | Supports Goal |
|--------|---------|-------------|---------------|
| Weight stabilized | stabilized | Body weight | Weight gain |
| Respiratory resolved | resolved | Respiratory status | On room air |
| Nutrition improved | improved | Infant formula intake | On oral nutrition |
