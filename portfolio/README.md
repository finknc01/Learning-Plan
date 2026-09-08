# Portfolio Project Index

This directory maps the larger standalone projects produced during the 52-week learning plan.

- [Portfolio evidence index](evidence-index.md) — what the portfolio can actually prove as real artifacts accumulate.

`Learning-Plan` is the hub. The substantial labs live in dedicated repositories so each can develop its own architecture, missions, evidence, failures, automation, and conclusions. Project timing is maintained in [`../roadmap/lab-schedule.md`](../roadmap/lab-schedule.md); live task/progress state remains in Notion.

The projects form one continuous **learning and portfolio progression**. They do not need to share one fictional company or production environment:

> **build the node → understand the node → connect the nodes → run/schedule the workload → observe failures → design physical infrastructure → recover systems → plan capacity → secure sensitive workloads → defend the full architecture**

## Standalone projects

### [Phoenix-Node](https://github.com/finknc01/Phoenix-Node)
**Story:** Project Phoenix — inherit a distrusted RHEL compute node, understand it, break it safely, repair it, automate it, and prove it can be rebuilt.

**Skills:** RHEL administration, boot/systemd, users/permissions/SELinux, storage, NetworkManager/firewalld, NVIDIA driver/CUDA, troubleshooting, automation, repeatability.

### [Topology-Faultline](https://github.com/finknc01/Topology-Faultline)
**Story:** Case File 07 — supposedly identical systems do not perform identically, so the hardware path becomes a forensic investigation.

**Skills:** CPU/NUMA, PCIe, GPU locality, NVMe, NIC/HCA placement, topology diagrams, measured vs. derived vs. modeled evidence.

### [Fabric-Faultline](https://github.com/finknc01/Fabric-Faultline)
**Story:** Operation Packetfall — the Helios AI cluster keeps suffering increasingly difficult network failures, and every incident asks: *Where did the packet stop, and what proves it?*

**Skills:** interfaces, MAC/IP, ARP, subnets, Ethernet switching, VLANs, routing, DNS, TCP/UDP, firewalls, MTU, packet loss, leaf-spine, congestion, RDMA/RoCE/InfiniBand context.

### [Scheduler-Colosseum](https://github.com/finknc01/Scheduler-Colosseum)
**Story:** The Arena — the same accelerated workload enters direct/containerized execution, Kubernetes, and Slurm under controlled rules.

**Skills:** containers, GPU containers, Kubernetes, NVIDIA device-plugin/GPU Operator concepts, Slurm, GRES, scheduling, failure behavior, execution-model tradeoffs.

### [Blackbox-GPU](https://github.com/finknc01/Blackbox-GPU)
**Story:** Incident Nightjar — a training run already failed; build enough telemetry to reconstruct what happened after the fact.

**Skills:** `nvidia-smi`, DCGM concepts, Prometheus, Grafana, logs, timelines, GPU health/performance telemetry, incident analysis.

### [Private-AI-Foundry](https://github.com/finknc01/Private-AI-Foundry)
**Story:** Project Obsidian — Aster Labs needs infrastructure for sensitive AI workloads and every defensive assumption must be justified.

**Skills:** threat modeling, RHEL host hardening, SELinux, segmentation, secrets, container boundaries, auditability, workload isolation, PPML/security boundaries.

### [Atlas-Rack](https://github.com/finknc01/Atlas-Rack)
**Story:** Operation Atlas — design an AI rack that remains deployable as power, cooling, cabling, serviceability, redundancy, and procurement constraints change.

**Skills:** rack layout, power budgets, cooling paths, interconnect/cabling, failure domains, redundancy, serviceability, architecture tradeoffs.

### [Lazarus-Cluster](https://github.com/finknc01/Lazarus-Cluster)
**Story:** The Resurrection Trials — a cluster is not trusted until it can fail predictably and recover from source-controlled truth.

**Skills:** worker/control-plane failure, DNS/network recovery, state/storage recovery, configuration drift, automation, RTO/RPO thinking, clean-room rebuilds.

### [Silicon-Tetris](https://github.com/finknc01/Silicon-Tetris)
**Story:** The Capacity Game — GPU, VRAM, power, network, storage, budget, and workload constraints keep changing while the system still has to fit.

**Skills:** workload characterization, GPU/VRAM sizing, power/network/storage capacity, budget tradeoffs, growth planning, Python/YAML modeling.

### [Checkpoint-Rush](https://github.com/finknc01/Checkpoint-Rush)
**Story:** Mercury Storage Incident — expensive GPUs keep going idle when jobs hit storage together, and the goal is to prove where the time disappears.

**Skills:** throughput/IOPS/latency, access patterns, small-file behavior, caching, shared-storage contention, checkpoint storms, GPU idle correlation, mitigation experiments.

## Project standard

Each project should clearly distinguish **planned work from completed evidence**. As the labs are performed, they should accumulate:

- problem and story context
- architecture and expected data/control paths
- implementation/configuration
- measured evidence
- modeled evidence where home-lab hardware cannot reproduce production systems
- deliberate failure/constraint scenarios
- symptom → evidence → hypothesis → test → fix reasoning
- automation and repeatability
- conclusions and design tradeoffs
- production considerations

A project is portfolio-ready when the repository can support a meaningful technical interview discussion without overstating what was actually measured or deployed.
