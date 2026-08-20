# Learning Plan — GPU / AI Infrastructure Engineering

This repository is the public hub for a 52-week, hands-on learning program focused on **GPU / AI data-center infrastructure engineering**. The detailed task checklist and live progress state live in Notion; GitHub is used for the stable roadmap, technical artifacts, diagrams, small labs, troubleshooting records, evidence, and links to the larger standalone projects.

## Start here

- [Visual 52-week roadmap](roadmap/visual-roadmap.md)
- [Standalone lab schedule](roadmap/lab-schedule.md)
- [Portfolio project map](portfolio/README.md)
- [Evidence index](portfolio/evidence-index.md)
- [High-level architecture diagrams](diagrams/README.md)
- [Small supporting labs](labs/README.md)
- [Detailed Learning Plan in Notion](https://app.notion.com/p/3c182d407ca18062b805c0689c5829d8?pvs=204)

## Source-of-truth rule

- **Notion** answers: *What tasks are active, complete, deferred, or next?*
- **Learning-Plan** answers: *How does the year fit together and what evidence exists?*
- **Standalone project repositories** answer: *What was actually built, measured, modeled, broken, diagnosed, or concluded?*

GitHub intentionally does not maintain a second live “current sprint” tracker.

## Portfolio projects

| Project | Engineering story | Status |
|---|---|---|
| [Phoenix-Node](https://github.com/finknc01/Phoenix-Node) | Build, break, diagnose, automate, and rebuild a GPU-ready Linux node | **Active** |
| [Topology-Faultline](https://github.com/finknc01/Topology-Faultline) | Diagnose performance differences caused by NUMA/PCIe/device locality | Planned |
| [Fabric-Faultline](https://github.com/finknc01/Fabric-Faultline) | Trace and repair increasingly difficult AI-cluster network failures | Planned |
| [Scheduler-Colosseum](https://github.com/finknc01/Scheduler-Colosseum) | Compare Docker, Kubernetes, and Slurm execution models using the same workload | Planned |
| [Blackbox-GPU](https://github.com/finknc01/Blackbox-GPU) | Reconstruct GPU incidents from telemetry, logs, and timelines | Planned |
| [Private-AI-Foundry](https://github.com/finknc01/Private-AI-Foundry) | Design defensible infrastructure for sensitive/private AI workloads | Planned |
| [Atlas-Rack](https://github.com/finknc01/Atlas-Rack) | Design an AI rack under power, cooling, cabling, and failure constraints | Planned |
| [Lazarus-Cluster](https://github.com/finknc01/Lazarus-Cluster) | Destroy cluster dependencies and prove recovery from source-controlled truth | Planned |
| [Silicon-Tetris](https://github.com/finknc01/Silicon-Tetris) | Model GPU, VRAM, power, network, storage, budget, and growth constraints | Planned |
| [Checkpoint-Rush](https://github.com/finknc01/Checkpoint-Rush) | Prove when storage behavior is starving expensive compute | Planned |

The projects form one continuous **learning and portfolio progression**, even though individual labs use different fictional organizations and incidents:

> **build the node → understand the node → connect the nodes → run/schedule the workload → observe failures → design physical infrastructure → recover systems → plan capacity → secure sensitive workloads → defend the full architecture**

## 52-week technical progression

| Weeks | Focus |
|---|---|
| 1–6 | Linux administration, storage, host networking, troubleshooting, Bash |
| 7–14 | NVIDIA AI infrastructure, GPU architecture, CUDA, diagnostics |
| 15–20 | Ethernet, fiber/optics, InfiniBand, RDMA/RoCE, rack power and cooling |
| 21–30 | Docker, NVIDIA Container Toolkit, Kubernetes, accelerator scheduling concepts |
| 31–38 | Slurm/HPC scheduling, Prometheus/Grafana, GPU observability |
| 39–44 | Python/Ansible automation, recovery, integration, secure/private AI |
| 45–52 | Applications, technical interviews, and targeted gap closure |

## Supporting material

### Small labs

The [`labs/`](labs/) directory contains short, focused exercises intended to reinforce one concept or failure mode in roughly 20–60 minutes. These do not replace the larger story-driven projects.

### Diagrams

The [`diagrams/`](diagrams/) directory contains editable Mermaid diagrams for the end-to-end AI infrastructure stack, GPU-node data paths, cluster fabrics, orchestration control planes, observability, and rack power/cooling.

### Troubleshooting and scripts

The [`troubleshooting/`](troubleshooting/) and [`scripts/`](scripts/) directories hold cross-project investigations and reusable automation that do not belong to one standalone project.

## Evidence standard

A checked task or finished project should eventually point to something demonstrable. Useful evidence includes:

- commands and configuration actually used
- architecture and data/control-flow diagrams
- before/after validation
- measurements and test results
- incident reports and failure timelines
- packet/storage/GPU diagnostic evidence
- automation and repeatable rebuilds
- design decisions and rejected alternatives

Every artifact should distinguish **measured**, **derived**, and **modeled/reference** information. Hardware or production behavior that was not personally operated must not be presented as measured experience.

See [`portfolio/evidence-index.md`](portfolio/evidence-index.md) for the cross-project proof map.

## Milestone gates

- **Week 6:** production-style Linux administration
- **Week 14:** NVIDIA GPU architecture, administration, and diagnostics
- **Week 20:** AI networking plus rack power/cooling understanding
- **Week 24:** GPU-enabled containers
- **Week 30:** Kubernetes scheduling/recovery plus a defensible GPU resource-control path; schedule a real GPU workload where the selected environment supports it
- **Week 34:** Slurm GPU scheduling where real GPU access is available, plus scheduler tradeoff reasoning
- **Week 38:** GPU observability and incident reconstruction
- **Week 40:** repeatable infrastructure automation and node rebuild
- **Week 42:** integrated, reproducible architecture story
- **Week 44:** interview-ready portfolio and private-AI/security story
- **Week 52:** first-year job-readiness plan complete

## Security, confidentiality, and licensing

All repositories are public portfolio labs. They must not contain employer/customer information, internal network details, credentials, private keys, real secrets, or proprietary configurations. Synthetic environments and sanitized evidence are the default. See [`SECURITY.md`](SECURITY.md).

Unless a repository later contains an explicit open-source license, **no open-source license is granted**. The material is published for educational and portfolio review; third parties should not assume permission to reuse code or documentation beyond rights provided by applicable law.

---

**Status:** Active 52-week learning and portfolio program.
