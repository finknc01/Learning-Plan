# Observability and Incident Loop

```mermaid
flowchart LR
    SYS[System / workload] --> M[Metrics]
    SYS --> L[Logs]
    SYS --> E[Events]
    M --> COL[Collection / scrape pipeline]
    L --> COL
    E --> COL
    COL --> STORE[(Telemetry history)]
    STORE --> Q[Queries / dashboards / alerts]
    Q --> DET[Detect symptom or anomaly]
    DET --> HYP[Form hypothesis]
    HYP --> TEST[Test with cross-layer evidence]
    TEST --> FIX[Recover / mitigate]
    FIX --> POST[Postmortem + prevention]
    POST --> AUTO[Automation / alert / runbook improvement]
    AUTO --> SYS
```

## Important distinction

A dashboard is not observability by itself. Useful incident work requires enough history and context to answer:

- what changed first?
- what was normal before the event?
- what else changed at the same time?
- which layer produced the earliest useful signal?

This loop connects **Blackbox-GPU**, **Checkpoint-Rush**, **Phoenix-Node**, and **Lazarus-Cluster**.