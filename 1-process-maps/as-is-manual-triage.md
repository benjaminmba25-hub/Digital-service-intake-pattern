## AS-IS: Manual Intake Process
*Simulation based on common public sector "swivel chair" patterns*

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
### Observed Pain Points (To Validate with SMEs)
- **30% Rejection Rate**: Forms returned due to missing mandatory fields
- **Time Lag**: 2-week average from submission to first validation check  
- **No Early Feedback**: User only learns of errors days after submission
- **Category Mis-routing**: Simple cases queued behind complex ones

### Questions for Subject Matter Experts
1. What is the current "Right First Time" percentage in your service?
2. Which data fields cause 80% of rejections (the "critical few")?
3. Do users have channel choice (online/paper/phone), or is this mandated?
