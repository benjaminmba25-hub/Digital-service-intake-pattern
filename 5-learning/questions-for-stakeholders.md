## Discovery Questions for Stakeholders
*To be completed with Subject Matter Experts (SMEs), Service Users, and Delivery Teams*

### Business Process
1. **Current Pain Points**: What is your current "Right First Time" rate, and what are the top 3 reasons submissions fail or get rejected?
2. **Channel & Volume**: Do users have channel choice (online/paper/phone), and when are your peak submission periods (e.g., Monday mornings, month-end)?

### Technical Constraints
3. **Legacy Integration**: Must we integrate with existing systems (e.g., DWP mainframes, NHS Spine, Local Gov CRMs), or is this a greenfield digital service?
4. **Identity & Trust**: What identity verification standard applies—GOV.UK One Login, bespoke authentication, or third-party verification (e.g., Experian)?

### Policy & Compliance
5. **Mandatory Evidence**: Which data fields are legally required versus optional, and are there specific document standards (e.g., bank statements dated within last 3 months)?
6. **Prioritisation Rules**: Who defines "urgent" cases—user self-declaration, system-calculated risk flags (age/vulnerability), or caseworker judgment?

### User Needs
7. **Digital Support**: What percentage of users need "assisted digital" (phone help, face-to-face support, or proxy submission), and how is this currently provided?
8. **Failure Recovery**: When submissions fail validation, do users prefer immediate phone callback, email guidance, or postal follow-up?

### Success & Constraints
9. **Success Metrics**: Beyond "Right First Time," how will we measure improvement—reduced processing time, reduced staff touch-time, or improved user satisfaction (NPS)?
10. **Known Blockers**: Are there political, budgetary, or contractual constraints that would prevent API-first architecture or real-time validation?

---

### My Assumptions to Validate
*These reflect my current understanding based on the portfolio simulation—requires stakeholder confirmation:*

- **User Preference**: Users prefer immediate validation feedback over delayed rejection, even if it increases initial form completion time.
- **Automation Bias**: Auto-triage will not introduce equality issues if we monitor routing decisions by demographic.
- **Technical Feasibility**: API-first architecture is acceptable; batch processing is not required.

**Status**: Awaiting placement with NHS ICB or DWP Digital team to populate stakeholder answers.
