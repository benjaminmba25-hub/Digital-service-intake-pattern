## Data Sensitivity & Risk Assessment
*Public Sector Intake Pattern - Governance Layer*

### Risk Classification: HIGH
This pattern handles **Special Category Data** (health, financial, biographical) 
requiring GDPR Article 9 compliance and public sector audit standards.

### Specific Risks & Mitigations

#### 1. Rejected Submission Data Retention
**Risk**: Validation failures may log PII (Personally Identifiable Information) 
in error logs visible to developers.

**Mitigation**: 
- Sanitize logs: Log field names ("address_missing") not values ("123 Fake Street")
- Separate audit trail (who submitted) from validation logic (what failed)
- Auto-delete rejected draft submissions after 30 days

#### 2. Accessibility vs. Security Balance
**Risk**: Screen readers may read out sensitive data (NINOs) in error messages.

**Mitigation**:
- Partial masking in UI: "N** *** **56A"
- Full data only in secure PDF confirmations, not HTML pages

#### 3. Auto-Triage Algorithm Bias
**Risk**: "Urgency" flags may create bias if certain demographic groups 
are more likely to be fast-tracked or delayed.

**Mitigation**:
- Human-in-the-loop for priority decisions (algorithm suggests, human confirms)
- Monthly equality impact assessment on routing decisions
- Audit trail: Log why case was triaged to specific queue

### Data Flow Mapping
| Stage | Data Type | Storage | Encryption |
|-------|-----------|---------|------------|
| Upload | Binary (PDF/JPG) | Temporary S3 | AES-256 |
| Validation | JSON metadata | Application memory | TLS 1.3 |
| Persistence | Structured record | PostgreSQL | TDE + Column-level |
| Archive | Compressed files | Cold storage | GPG encryption |

### Questions for Data Protection Officer
1. Is 365-day retention appropriate, or does DWP/NHS require shorter periods?
2. Do we need explicit consent for automated decision-making (triage logic)?
3. Should we implement "right to erasure" for draft submissions?
