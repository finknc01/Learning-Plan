# Learning Plan — GPU / AI Infrastructure Engineering

This repository documents my structured transition into **GPU / AI Data Center Infrastructure Engineering**, with emphasis on the full infrastructure stack rather than isolated tools.

The goal is to build demonstrable capability across physical data-center infrastructure, Linux systems administration, NVIDIA GPU infrastructure, high-performance networking, containers, Kubernetes, Slurm/HPC scheduling, observability, automation, and secure/private AI infrastructure.

> **Career direction:** GPU / AI Data Center Infrastructure Engineer → GPU/HPC Infrastructure Engineer → Senior AI Infrastructure Engineer

## What this repository demonstrates

This is an engineering evidence trail, not just a study checklist. As the plan progresses, this repository will contain:

- architecture and data-flow diagrams
- Linux administration notes and runbooks
- Bash/Python/Ansible automation
- GPU installation, validation, and troubleshooting documentation
- AI networking and rack-scale infrastructure diagrams
- Docker and NVIDIA Container Toolkit labs
- Kubernetes and NVIDIA GPU Operator configurations
- Slurm/HPC scheduling labs
- DCGM / Prometheus / Grafana observability work
- incident investigations and failure-recovery writeups
- links to larger standalone portfolio projects

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

## 52-week roadmap

The current plan is designed to be completed within **52 weeks** while working full time, averaging approximately **8–10 focused hours per week**.

| Weeks | Focus |
|---|---|
| 1–6 | Linux administration, storage, networking, troubleshooting, Bash |
| 7–14 | NVIDIA AI infrastructure, GPU architecture, CUDA, DCGM diagnostics |
| 15–20 | Ethernet, fiber/optics, InfiniBand, RDMA/RoCE, rack power and cooling |
| 21–30 | Docker, NVIDIA Container Toolkit, Kubernetes, GPU Operator |
| 31–38 | Slurm/HPC scheduling, Prometheus/Grafana, GPU observability |
| 39–44 | Ansible/Python automation, portfolio integration, security/private AI |
| 45–52 | Applications, technical interviews, targeted gap closure |

The detailed canonical checklist is maintained in Notion:

- [Learning Plan — Notion](https://app.notion.com/p/Learning-Plan-3c182d407ca18062b805c0689c5829d8?source=copy_link)

## Repository structure

```text
Learning-Plan/
├── README.md
├── SECURITY.md
├── roadmap/
├── notes/
├── labs/
├── diagrams/
├── troubleshooting/
├── scripts/
├── portfolio/
└── templates/
```

### [`roadmap/`](roadmap/)
Milestone summaries and progress snapshots. The detailed task tracker remains in Notion so this repository stays readable to employers.

### [`notes/`](notes/)
Concise technical notes focused on concepts, interfaces, tradeoffs, and operational relevance.

### [`labs/`](labs/)
Hands-on exercises with objectives, architecture, procedure, validation, failure testing, and lessons learned.

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
Index of larger integrated projects that warrant their own repositories.

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
- **Week 44:** interview-ready technical portfolio
- **Week 52:** first-year job-readiness plan complete

## Portfolio strategy

Small exercises and learning artifacts stay in this repository. Larger integrated systems that can support a substantial interview discussion will become standalone repositories and be linked here.

Planned examples include:

- GPU infrastructure lab
- Kubernetes GPU platform
- Slurm/HPC GPU cluster
- AI infrastructure observability stack
- secure/private AI infrastructure project

## Documentation standard

For substantial labs and projects, I aim to document:

- the problem being solved
- architecture and dependencies
- implementation steps
- configuration or automation
- validation evidence
- failure scenarios
- troubleshooting and recovery
- design tradeoffs
- what I would change in a production environment

## Security and confidentiality

This repository is public. It must not contain credentials, API keys, private keys, proprietary employer configurations, internal network information, customer data, or other confidential material. See [`SECURITY.md`](SECURITY.md).

---

**Status:** Active 52-week learning and portfolio program.
