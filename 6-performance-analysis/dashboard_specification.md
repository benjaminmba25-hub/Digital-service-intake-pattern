```markdown
## Looker Studio Dashboard Specification
*Real-time performance monitoring for Intake Service*

### Page 1: Executive Summary (Service Owner view)
- **Scorecard**: Right-First-Time % (vs target line)
- **Time series**: Processing time trend (last 90 days)
- **Pie chart**: Rejection reasons breakdown (missing docs, format errors, incomplete data)

### Page 2: Operational Deep Dive (Delivery Manager view)
- **Funnel visualization**: 
  - Stage 1: Start form → Stage 2: Upload docs → Stage 3: Submit → Stage 4: Approved
  - Drop-off % at each stage
- **Geo map**: Submissions by region (identifying digital exclusion hotspots)
- **Table**: Top 10 error messages (prioritising content fixes)

### Page 3: User Experience (UX Researcher view)
- **GA4 integration**: Average session duration, bounce rate by page
- **Accessibility metrics**: Screen reader usage, keyboard navigation success rate
- **Device breakdown**: Mobile vs Desktop completion rates
