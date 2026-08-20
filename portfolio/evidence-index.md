# Portfolio Evidence Index

This page answers one question:

> **What can this portfolio actually prove?**

The index is intentionally conservative. A project being planned, documented, or having missions written does **not** count as completed technical evidence. Links should be added here only after an artifact exists and can support the claimed skill.

## Evidence states

- **Planned** — the project and evidence target exist, but the work has not been demonstrated yet.
- **In progress** — real artifacts exist, but the project has not reached its completion standard.
- **Demonstrated** — linked evidence directly supports the named skill.
- **Modeled** — the artifact is a transparent reference/modeling exercise rather than a claim of operating that hardware.

## Cross-project proof map

| Project | Skill story to prove | Current evidence state | Best eventual artifacts |
|---|---|---|---|
| [Phoenix-Node](https://github.com/finknc01/Phoenix-Node) | Linux/GPU node administration, troubleshooting, and rebuild | **In progress — campaign ready; evidence begins with Mission 00** | inventory, service incident, storage/network fault, GPU validation, automation, rebuild report |
| [Topology-Faultline](https://github.com/finknc01/Topology-Faultline) | NUMA/PCIe/GPU/NIC/NVMe locality reasoning | Planned | real `lspci`/NUMA map, topology diagram, locality experiments, modeled DGX/HGX case |
| [Fabric-Faultline](https://github.com/finknc01/Fabric-Faultline) | evidence-first networking and packet-path troubleshooting | Planned | namespace configs, packet captures, incident reports, topology diagrams, throughput/loss experiments |
| [Scheduler-Colosseum](https://github.com/finknc01/Scheduler-Colosseum) | Docker/Kubernetes/Slurm workload-placement tradeoffs | Planned | workload baseline, manifests/job scripts, allocation evidence, failure comparison, final scorecard |
| [Blackbox-GPU](https://github.com/finknc01/Blackbox-GPU) | GPU observability and incident reconstruction | Planned | dashboards, PromQL, telemetry baseline, timeline, postmortem |
| [Private-AI-Foundry](https://github.com/finknc01/Private-AI-Foundry) | defensive/private AI infrastructure design | Planned | threat model, trust-boundary diagram, access matrix, hardening configs, architecture review |
| [Atlas-Rack](https://github.com/finknc01/Atlas-Rack) | deployable AI rack design under physical constraints | Planned / modeled | rack elevations, power/thermal math, cable map, BOM, failure-domain analysis, design revisions |
| [Lazarus-Cluster](https://github.com/finknc01/Lazarus-Cluster) | recovery, reproducibility, and failure-domain reasoning | Planned | runbooks, recovery tests, RTO/RPO measurements, Ansible, rebuild evidence, postmortem |
| [Silicon-Tetris](https://github.com/finknc01/Silicon-Tetris) | transparent capacity planning under competing constraints | Planned / modeled | workload YAML, planner code/tests, scenario reports, bottleneck analysis, rejected designs |
| [Checkpoint-Rush](https://github.com/finknc01/Checkpoint-Rush) | storage-path diagnosis and GPU-starvation reasoning | Planned | `fio` profiles, `iostat` evidence, checkpoint-storm experiment, local/shared comparison, mitigation report |

## Evidence quality checklist

Before linking an artifact here, verify that it answers most of these questions:

- What problem or hypothesis was being investigated?
- What environment was actually used?
- What was predicted before the experiment?
- What evidence was collected?
- What did the evidence prove or fail to prove?
- Was the result measured, derived, simulated, or modeled?
- What failed or changed during the work?
- What would be different at production scale?
- Could the artifact support a five-minute technical interview discussion?

## High-value evidence targets

As the portfolio develops, prioritize a smaller number of strong artifacts over dozens of screenshots. Particularly useful interview evidence will include:

1. a Linux incident report with a clear evidence chain;
2. an evidence-backed hardware/topology diagram;
3. a packet-path/network RCA;
4. a real NVIDIA driver/CUDA/GPU validation record;
5. a Docker/Kubernetes/Slurm comparison using the same workload;
6. a GPU observability incident timeline;
7. an idempotent automated rebuild;
8. a rack/capacity design with explicit assumptions and tradeoffs;
9. a storage bottleneck experiment tied to compute idle time;
10. a private-AI threat model that clearly separates infrastructure controls from PPML techniques.

## Rule

**Do not upgrade an evidence state because a mission was written or a technology was read about. Upgrade it when the repository contains the proof.**
