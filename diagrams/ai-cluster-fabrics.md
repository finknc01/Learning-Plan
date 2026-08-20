# AI Cluster Fabrics

Production AI infrastructure often separates traffic by purpose. This high-level diagram is a reference model, not a claim about the physical home lab.

```mermaid
flowchart TB
    subgraph Compute[Compute nodes]
        C1[GPU Node 1]
        C2[GPU Node 2]
        C3[GPU Node N]
    end

    subgraph Fabrics[Logical fabrics]
        OOB[Out-of-band / BMC network]
        MGMT[Host management / services]
        COMP[High-bandwidth compute fabric]
        STORE[Storage fabric]
    end

    OPS[Admin / automation] --> MGMT
    OPS --> OOB
    MGMT --> C1
    MGMT --> C2
    MGMT --> C3
    OOB --> C1
    OOB --> C2
    OOB --> C3
    C1 <--> COMP
    C2 <--> COMP
    C3 <--> COMP
    C1 <--> STORE
    C2 <--> STORE
    C3 <--> STORE
    STORE <--> S[(Shared datasets / checkpoints)]
```

## Why separate paths?

- management traffic has different availability/security needs than collective GPU traffic
- storage traffic has different congestion and throughput patterns
- BMC/out-of-band access should survive failures that make the host OS unreachable
- high-performance compute traffic may use Ethernet/RoCE or InfiniBand depending on design

Use **Fabric-Faultline** to turn these boxes into packet paths and failure domains.