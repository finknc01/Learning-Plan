# End-to-End AI Infrastructure Stack

This is the top-level mental model for the entire learning plan.

```mermaid
flowchart TB
    A[Utility power / cooling plant] --> B[Rack power + cooling delivery]
    B --> C[Server hardware + BMC / firmware]
    C --> D[CPU + RAM + PCIe + GPU + NVMe]
    D --> E[NIC / HCA + network and storage fabrics]
    D --> F[Linux kernel + device drivers]
    E --> F
    F --> G[CUDA / GPU runtime + libraries]
    G --> H[Containers]
    H --> I[Kubernetes or Slurm]
    I --> J[AI training / inference workload]
    J --> K[Metrics + logs + events]
    K --> L[Observability + incident response]
    L --> M[Automation + recovery]
    M --> C
    S[Security + trust boundaries] -.cross-cutting.-> C
    S -.-> E
    S -.-> F
    S -.-> H
    S -.-> I
    S -.-> J
```

## Questions to ask at every boundary

- What crosses this boundary: power, heat, packets, DMA, system calls, API requests, credentials, or telemetry?
- What fails on each side?
- What evidence confirms the boundary is healthy?
- Who or what owns recovery?

As the plan progresses, replace generic boxes with links to measured evidence from the standalone projects.