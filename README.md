# The 'Right-First-Time' Intake Pattern
**Technical Business Analyst Portfolio | Public Sector Digital Optimisation**

## The Problem
In high-volume public sector intake (DWP benefits, NHS referrals, Local Government permits), 
30% of submissions fail initial validation due to missing or conflicting data. This creates 
"swivel chair" rework for caseworkers and delays for citizens.

## The Solution
A **Smart Intake** workflow that validates evidence before it reaches the decision-maker, 
while maintaining public sector standards (accessibility, audit, GDPR).

## 📊 Performance Analyst Approach

This portfolio demonstrates **measurement-driven service optimisation** aligned with DWP Digital's 
Performance Analyst competency framework:

### Data Analysis & Visualization
- **SQL (BigQuery Standard SQL)**: Complex JOINs and window functions for intake funnel analysis
- **Looker Studio/Power BI**: Executive dashboards translating raw data to service insights
- **Google Analytics 4**: User behaviour tracking and conversion optimisation

### Statistical Rigor
- **A/B Testing**: Experimental design to validate process changes (not just assume they work)
- **KPI Definition**: Lag measures (outcomes) vs lead measures (operational drivers)
- **Cohort Analysis**: Tracking user segments over time to identify trends

### Service Improvement Methodology
- **Problem Identification**: 30% rejection rate identified via data (not assumption)
- **Intervention Measurement**: Quantified impact of real-time validation on processing time
- **Continuous Monitoring**: Automated dashboards replacing monthly Excel reports

### DWP Digital Alignment
- Evidence-based decision making (NAO value-for-money principles)
- Accessibility metrics (WCAG 2.1 compliance tracking)
- Cost-per-transaction reduction (Civil Service efficiency targets)
---

## 📂 Portfolio Artefacts (Click to View)

### 1. Process Analysis
Visualising current pain points and proposed optimisation.

- [AS-IS: Manual Triage Process](./1-process-maps/as-is-manual-triage.md)  
  *Current state with 30% rejection rate, postal delays, and "swivel chair" inefficiencies*
```mermaid
graph TD
    classDef delay fill:#f9f,stroke:#333,stroke-width:2px,color:#000
    classDef error fill:#ff9999,stroke:#f00,stroke-width:2px,color:#000
    
    subgraph "Current State (High Failure Rate)"
        A[User Fills Paper Form] -->|Postal Delay| B(Mailroom Sorts)
        B -->|Wait: 2-3 Days| C[Admin Manual Data Entry]
        C --> D{Data Complete?}
        
        D -->|No - Missing Docs| E[Return to User]
        E -->|Wait: 5+ Days| A
        
        D -->|Yes| F[Manager Review Queue]
        F -->|Wait: 7 Days| G[Decision Maker]
        
        G -->|Reject - Wrong Category| H[Restart Process]
        H --> A
    end
    
    class B,F delay
    class E,H error
```  
- [TO-BE: Smart Intake Pattern](./1-process-maps/to-be-smart-intake.md)  
  *Target state with real-time validation, auto-triage, and API-first architecture*
```mermaid
graph TD
    classDef automation fill:#99ff99,stroke:#090,stroke-width:2px,color:#000
    classDef system fill:#e1f5fe,stroke:#0277bd,stroke-width:2px,color:#000
    classDef user fill:#fff9c4,stroke:#f57f17,stroke-width:2px,color:#000
    
    subgraph "Target State (Right-First-Time)"
        A[User Accesses Web Portal] --> B{Real-Time Validation}
        
        B -->|Error Found| C[Instant Feedback Warning]
        C -->|Guidance Provided| A
        
        B -->|Valid Data| D[Submit to API]
        D --> E{Auto-Triage Logic}
        
        E -->|High Priority| F[Urgent Worklist]
        E -->|Standard| G[Standard Queue]
        E -->|Auto-Eligible| H[Immediate Approval]
        
        F --> I[Decision Maker Review]
        G --> I
    end
    
    class B,E automation
    class D system
    class A,C user
```
### 2. Requirements Engineering
Behaviour-Driven Development specifications.

- [Intake Validation Scenarios](./2-user-stories/intake-validation.feature)  
  *Gherkin feature file including accessibility compliance (WCAG 2.1 AA) and validation logic*

### 3. Data Specifications
Technical implementation details for developer handoff.

- [Submission Payload Schema](./3-data-specs/submission-payload.json)  
  *JSON schema with PII handling, validation rules, and data retention policies*

### 4. Governance & Compliance
Public sector risk management.

- [Data Sensitivity Assessment](./4-governance/data-sensitivity-assessment.md)  
  *GDPR Article 9 considerations, audit trails, and bias mitigation for auto-triage*
  
- [Accessibility Checklist](./4-governance/accessibility-checklist.md)  
  *WCAG 2.1 AA compliance criteria aligned with GDS Service Standards*

### 5. Discovery & Learning
Stakeholder engagement preparation.

- [Questions for Stakeholders](./5-learning/questions-for-stakeholders.md)  
  *Top 10 discovery questions for SMEs, service users, and delivery teams (to be validated)*

### 6. Performance Analysis & Measurement
Demonstrating DWP Digital-style data-driven service improvement.

- [KPI Framework & SQL Queries](./6-performance-analysis/intake_kpi_framework.md)  
  *BigQuery SQL for Right-First-Time monitoring and cost-per-transaction analysis*
  
- [Dashboard Specification](./6-performance-analysis/dashboard_specification.md)  
  *Looker Studio design for real-time service performance visibility*
  
- [A/B Test Methodology](./6-performance-analysis/ab_test_methodology.md)  
  *Experimental design to validate Smart Intake impact with statistical rigour*
---

## Role Target
**Primary**: Performance Analyst – DWP Digital (Leeds/Manchester/Sheffield)
**Secondary**: Data Analyst – Public Sector Transformation

*Note: While this portfolio includes BA artefacts (process maps, user stories), the core 
methodology is **measurement and optimisation**. The process design elements are included 
to demonstrate end-to-end service understanding, but my focus is data-driven performance improvement.*

## 🎯 Domain Context (Examples Only)
This pattern is domain-agnostic. Specific applications would include:
- **DWP**: UC claim evidence validation (bank statement format checks)
- **NHS**: Referral completeness (mandatory clinical attachments)
- **Local Gov**: Planning permission pre-checks (mandatory documents)

*Domain-specific policy rules would be elaborated with Subject Matter Experts during discovery.*

## 📄 Licence & Disclaimer
**Licence**: [MIT License](./LICENSE) - See LICENSE file for details.

**Disclaimer**: This is an **educational simulation** created by an individual BA candidate. 
- No real personal data or proprietary government systems are included
- Based on publicly available GDS standards and NAO reports
- Not affiliated with NHS England, DWP, or any government body
