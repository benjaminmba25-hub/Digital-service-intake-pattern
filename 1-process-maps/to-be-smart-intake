## TO-BE: Smart Intake Pattern
*Proposed validation-at-source workflow*

```mermaid
graph TD
    subgraph Target State (Right-First-Time)
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
    
    classDef automation fill:#99ff99,stroke:#090,stroke-width:2px,color:#000
    classDef system fill:#e1f5fe,stroke:#0277bd,stroke-width:2px,color:#000
    classDef user fill:#fff9c4,stroke:#f57f17,stroke-width:2px,color:#000
    
    class B,E automation
    class D system
    class A,C user
