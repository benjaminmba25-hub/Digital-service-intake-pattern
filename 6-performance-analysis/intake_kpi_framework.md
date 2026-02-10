## Performance Measurement Framework: Right-First-Time Intake
*DWP Digital Performance Analyst approach*

### Primary KPIs (Lag Measures)
| Metric | Current State | Target | Data Source |
|--------|--------------|--------|-------------|
| **Right-First-Time Rate** | 70% | 90% | Submission validation logs |
| **Average Processing Time** | 14 days | 48 hours | Case management system timestamps |
| **Cost Per Transaction** | £85 | £42 | Finance system + time tracking |
| **User Satisfaction (CSAT)** | 72% | 85% | Post-submission survey |

### Operational KPIs (Lead Measures)
- **Validation Failure Rate**: % submissions failing real-time checks
- **Channel Mix**: % digital vs. paper submissions (digital target: 80%)
- **Drop-off Points**: Step-by-step funnel analysis (Google Analytics 4)

### SQL Query Pattern (BigQuery Standard SQL)
```sql
-- Daily Right-First-Time monitoring for dashboard
SELECT 
    DATE(submission_timestamp) as submission_date,
    COUNT(*) as total_submissions,
    COUNTIF(validation_status = 'PASSED_FIRST_TIME') as rft_count,
    ROUND(COUNTIF(validation_status = 'PASSED_FIRST_TIME') / COUNT(*), 2) as rft_rate,
    AVG(TIMESTAMP_DIFF(decision_timestamp, submission_timestamp, HOUR)) as avg_processing_hours
FROM `dwp-digital.intake.submissions`
WHERE submission_timestamp &gt;= DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY)
GROUP BY 1
ORDER BY 1 DESC;
