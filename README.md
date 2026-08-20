# Learning Plan — GPU / AI Infrastructure Engineering

This repository is the public hub for my structured transition into **GPU / AI Data Center Infrastructure Engineering**, with emphasis on understanding and operating the full infrastructure stack rather than collecting isolated tools.

The goal is to build demonstrable capability across physical data-center infrastructure, Linux systems administration, NVIDIA GPU infrastructure, high-performance networking, containers, Kubernetes, Slurm/HPC scheduling, observability, automation, storage, capacity planning, recovery, and secure/private AI infrastructure.

> **Career direction:** GPU / AI Data Center Infrastructure Engineer → GPU/HPC Infrastructure Engineer → Senior AI Infrastructure Engineer

## How this repository fits the portfolio

`Learning-Plan` is the **roadmap and evidence hub**. It contains cross-project notes, diagrams, milestone summaries, small exercises, troubleshooting records, scripts, and links to the larger story-driven labs.

The substantial labs now live in their **own repositories** so each can develop into a coherent engineering project instead of being buried inside one monorepo.

- [Phoenix-Node](https://github.com/finknc01/Phoenix-Node) — build, break, diagnose, automate, and rebuild a GPU-ready Linux node.
- [Topology-Faultline](https://github.com/finknc01/Topology-Faultline) — investigate NUMA, PCIe, GPU, NIC/HCA, NVMe, and locality as a hardware-forensics case.
- [Fabric-Faultline](https://github.com/finknc01/Fabric-Faultline) — learn networking by tracing and repairing increasingly difficult failures in a fictional AI cluster.
- [Scheduler-Colosseum](https://github.com/finknc01/Scheduler-Colosseum) — run the same workload through Docker, Kubernetes, and Slurm and compare their operational tradeoffs.
- [Blackbox-GPU](https://github.com/finknc01/Blackbox-GPU) — build a GPU flight recorder and reconstruct incidents from telemetry, logs, and timelines.
- [Private-AI-Foundry](https://github.com/finknc01/Private-AI-Foundry) — design and test infrastructure controls for sensitive/private AI workloads.
- [Atlas-Rack](https://github.com/finknc01/Atlas-Rack) — design an AI rack while power, cooling, cabling, redundancy, serviceability, and procurement constraints keep changing.
- [Lazarus-Cluster](https://github.com/finknc01/Lazarus-Cluster) — deliberately destroy cluster dependencies and prove they can be recovered from source-controlled truth.
- [Silicon-Tetris](https://github.com/finknc01/Silicon-Tetris) — model GPU, VRAM, network, storage, power, rack-space, workload, and budget constraints as a capacity-planning game.
- [Checkpoint-Rush](https://github.com/finknc01/Checkpoint-Rush) — investigate storage behavior, checkpoint storms, and GPU starvation through controlled experiments.

See [`portfolio/README.md`](portfolio/README.md) for the portfolio map and [`roadmap/lab-schedule.md`](roadmap/lab-schedule.md) for when each project is used in the 52-week curriculum.

## Learning approach

I learn best by understanding the surrounding system, so each topic is studied in context:

1. **Why does it exist?**
2. **What are the core components?**
3. **What does it depend on?**
4. **What depends on it?**
5. **How does data or control flow through it?**
6. **What alternatives and tradeoffs exist?**
7. **How does it fail, and how is it diagnosed?**
8. **Can I demonstrate it hands-on?**

The end-to-end mental model is:

```text
Utility power / cooling
        ↓
Rack and server hardware
        ↓
Firmware / BMC
        ↓
CPU / memory / PCIe / NVLink / NVSwitch
        ↓
NIC / HCA / network and storage fabrics
        ↓
Linux kernel / drivers
        ↓
CUDA / GPU runtime
        ↓
Containers
        ↓
Kubernetes / Slurm
        ↓
AI workloads
        ↓
Telemetry / automation / security
```

## Execution model

The detailed canonical checklist is maintained in Notion, while this repository exposes a concise, portfolio-friendly execution system.

At any point, only three things should be active:

- **NOW:** one primary hands-on mission.
- **NEXT:** one supporting concept needed to understand the mission.
- **EVIDENCE:** one artifact proving what was learned or demonstrated.

Everything else is **Later**, not an active backlog demanding attention.

Study sessions can be sized to available attention and energy:

| Mode | Goal |
|---|---|
| **15-minute ignition** | Open the current mission, inspect or run one thing, and leave a concrete restart point. |
| **45-minute standard** | 5 min orient → 30 min hands-on → 10 min evidence/notes. |
| **90-minute deep session** | Two focused work sprints with a short break, ending with documentation and the next action. |

A difficult week does not create catch-up debt. The **minimum viable week** is three short sessions, meaningful progress on one mission, and a written restart point. Optional courses, certifications, extra tools, and polish are the first things trimmed when time is limited.

See [`roadmap/execution-system.md`](roadmap/execution-system.md) for the full workflow.

## Current sprint

The public sprint pointer lives in [`roadmap/current-sprint.md`](roadmap/current-sprint.md).

The current starting point is **Weeks 1–2**:

- **NOW:** Phoenix-Node Mission 00 — Triage.
- **NEXT:** understand the boot path `UEFI → bootloader → kernel → initramfs → systemd → services → user processes`.
- **EVIDENCE:** save the node/environment inventory and leave the exact next action for Mission 01.

## 52-week roadmap

The plan is designed to be completed within **52 weeks** while working full time, targeting approximately **8–10 focused hours per week** without depending on perfect weekly consistency.

| Weeks | Focus |
|---|---|
| 1–6 | Linux administration, storage, host networking, troubleshooting, Bash |
| 7–14 | NVIDIA AI infrastructure, GPU architecture, CUDA, DCGM diagnostics |
| 15–20 | Ethernet, fiber/optics, InfiniBand, RDMA/RoCE, rack power and cooling |
| 21–30 | Docker, NVIDIA Container Toolkit, Kubernetes, GPU Operator |
| 31–38 | Slurm/HPC scheduling, Prometheus/Grafana, GPU observability |
| 39–44 | Ansible/Python automation, recovery, portfolio integration, security/private AI |
| 45–52 | Applications, technical interviews, targeted gap closure |

The detailed canonical checklist is maintained in Notion:

- [Learning Plan — Notion](https://app.notion.com/p/3c182d407ca18062b805c0689c5829d8?pvs=204)

## Repository structure

```text
Learning-Plan/
├── README.md
├── SECURITY.md
├── roadmap/
│   ├── README.md
│   ├── current-sprint.md
│   ├── execution-system.md
│   └── lab-schedule.md
├── notes/
├── labs/
├── diagrams/
├── troubleshooting/
├── scripts/
├── portfolio/
└── templates/
```

### [`roadmap/`](roadmap/)
Current sprint, lab timing, milestone summaries, and the focus-friendly execution model. The full task checklist remains in Notion.

### [`notes/`](notes/)
Concise technical notes focused on concepts, interfaces, tradeoffs, and operational relevance.

### [`labs/`](labs/)
Small hands-on exercises and cross-project experiments. Substantial story-driven projects live in their dedicated repositories.

### [`diagrams/`](diagrams/)
Evolving architecture, rack, network, control-plane, and data-flow diagrams.

### [`troubleshooting/`](troubleshooting/)
Incident-style investigations using:

```text
symptom → affected layer → evidence → hypothesis → test → fix → prevention
```

### [`scripts/`](scripts/)
Bash, Python, Ansible, and other automation developed during the plan.

### [`portfolio/`](portfolio/)
Index of the standalone story-driven projects and how they fit together.

### [`templates/`](templates/)
Reusable documentation templates to keep labs and incident reports consistent.

## Planned technical milestones

- **Week 6:** production-style Linux administration
- **Week 14:** NVIDIA GPU architecture, administration, and diagnostics
- **Week 20:** AI networking plus rack power/cooling understanding
- **Week 24:** GPU-enabled containers
- **Week 30:** Kubernetes GPU workloads
- **Week 34:** Slurm GPU scheduling
- **Week 38:** GPU observability and incident case study
- **Week 40:** repeatable infrastructure automation and node rebuild
- **Week 42:** integrated, reproducible portfolio architecture
- **Week 44:** interview-ready technical portfolio and secure/private-AI story
- **Week 52:** first-year job-readiness plan complete

## Documentation standard

For substantial labs and projects, the goal is to document:

- problem and scope
- architecture and dependencies
- implementation
- data/control path
- configuration or automation
- validation evidence
- failure scenarios
- troubleshooting and recovery
- design tradeoffs
- measured vs. modeled results where hardware is unavailable
- what would change in a production environment
- an explicit restart point while work is in progress

## Security and confidentiality

This repository is public. It must not contain credentials, API keys, private keys, proprietary employer configurations, internal network information, customer data, or other confidential material. Real production experience should be translated into synthetic lab examples. See [`SECURITY.md`](SECURITY.md).

---

**Status:** Active 52-week learning and portfolio program.
