# Standalone Lab Schedule

The ten story-driven repositories are the **hands-on implementation tracks** for the 52-week plan. They are not extra homework layered on top of the roadmap.

When a lab overlaps a weekly objective, use the lab mission as the hands-on exercise and save the authoritative evidence in that project's repository. The canonical task/progress state lives in Notion.

## Schedule by project

| Project | When to work on it | Role in the plan |
|---|---|---|
| [Phoenix-Node](https://github.com/finknc01/Phoenix-Node) | **Weeks 1–6**, GPU stage **11–12**, automation/final rebuild **39–40** | Linux node administration, GPU host setup, troubleshooting, automation, repeatability |
| [Topology-Faultline](https://github.com/finknc01/Topology-Faultline) | **Weeks 9–10**, final case by **13–14** | NUMA/PCIe/GPU/NIC/NVMe topology and locality reasoning |
| [Fabric-Faultline](https://github.com/finknc01/Fabric-Faultline) | preview **3–4**, main campaign **15–18** | networking fundamentals through AI fabric concepts and failure isolation |
| [Atlas-Rack](https://github.com/finknc01/Atlas-Rack) | requirements/layout **9–10**, core campaign **19–20** | rack design, power, cooling, cabling, redundancy, serviceability; procurement/final review are stretch if needed |
| [Scheduler-Colosseum](https://github.com/finknc01/Scheduler-Colosseum) | continuous comparison **21–34** | Docker execution → GPU containers → Kubernetes → accelerator scheduling → Slurm → architecture verdict |
| [Lazarus-Cluster](https://github.com/finknc01/Lazarus-Cluster) | **29–30**, **33–34**, **39–40**, final **41–42** | resilience, state/control-plane failures, configuration drift, recovery automation, RTO/RPO |
| [Blackbox-GPU](https://github.com/finknc01/Blackbox-GPU) | baseline **13–14**, main campaign **35–38** | GPU telemetry, Prometheus/Grafana, logs, incident reconstruction |
| [Silicon-Tetris](https://github.com/finknc01/Silicon-Tetris) | workload deck **7–8**, VRAM/power **19–20**, final model **41–42** | workload characterization, GPU/VRAM/power/network/storage/budget capacity planning; network constraint may be deferred from Week 20 |
| [Checkpoint-Rush](https://github.com/finknc01/Checkpoint-Rush) | baseline/access patterns **3–4**, main investigation **35–38**, mitigation/final **41–42 or targeted gap closure** | storage performance, caching, contention, checkpoint storms, GPU starvation |
| [Private-AI-Foundry](https://github.com/finknc01/Private-AI-Foundry) | core campaign **43–44** | threat modeling, segmentation, secrets, isolation, security review; audit/PPML deep-dives are stretch |

## Schedule by learning block

### Weeks 1–2 — Ubuntu server administration
**Core:** [Phoenix-Node](https://github.com/finknc01/Phoenix-Node) Missions 00–01

Inventory the environment and investigate the boot chain while learning Linux fundamentals.

### Weeks 3–4 — Storage, host networking, enterprise Linux

- **Core — Phoenix-Node:** Missions 02–04 — access control, storage, host networking
- **Supporting — Fabric-Faultline:** Missions 00–01 — follow the packet; make two hosts communicate
- **Supporting — Checkpoint-Rush:** Missions 00–01 — storage baseline and access patterns

Phoenix is the priority. If the block is full, defer the supporting networking/storage preview work to the later dedicated blocks rather than rushing all projects.

### Weeks 5–6 — Linux troubleshooting and Bash
**Core:** Phoenix-Node checkpoint

Finish the early node missions, deliberately reproduce at least one safe failure, and document evidence-first troubleshooting.

### Weeks 7–8 — AI infrastructure fundamentals
**Core:** [Silicon-Tetris](https://github.com/finknc01/Silicon-Tetris) Mission 00

Create the workload deck before sizing infrastructure. Learn what training, fine-tuning, batch inference, and latency-sensitive inference demand from the system.

### Weeks 9–10 — GPU server architecture

- **Core — Topology-Faultline:** Cases 00–04 — real inventory, PCIe, NUMA, GPU and I/O locality
- **Supporting — Atlas-Rack:** Missions 00–01 — requirements packet and first naive layout

Use real laptop measurements where possible and clearly label production-scale topology/rack elements as modeled.

### Weeks 11–12 — GPU Linux setup
**Core:** Phoenix-Node Mission 05

Bring the node from Linux host to a validated NVIDIA driver/CUDA/GPU state using a **real Linux GPU administration environment with direct NVIDIA GPU access**. The Ubuntu VM remains useful for ordinary Linux work, but Linux driver-installation evidence requires native/direct access on a supported Linux GPU host.

### Weeks 13–14 — GPU diagnostics

- **Core — Topology-Faultline:** Case 05 + Final forensic case
- **Supporting — Blackbox-GPU:** Mission 00 flight-recorder baseline

### Weeks 15–16 — Ethernet and physical network layer
**Core:** Fabric-Faultline Missions 02–06

Advance through switching, VLAN/routing, DNS/application reachability, and physical-layer context.

### Weeks 17–18 — RDMA, RoCE, InfiniBand, AI fabrics
**Core:** Fabric-Faultline Missions 07–10 + Final

Move into degraded links, leaf-spine, congestion, collective-communication context, and RDMA/RoCE/InfiniBand comparison. Production RDMA/InfiniBand behavior is modeled/reference unless real hardware is available.

### Weeks 19–20 — Rack power, cooling, and interconnect

- **Core — Atlas-Rack:** Missions 02–05 — power, cooling, cabling, redundancy
- **Core — Silicon-Tetris:** Missions 01–02 — VRAM packing and power constraints
- **Stretch:** Atlas Mission 06 + Final; Silicon Mission 03 network constraint

The Week 20 milestone is a coherent rack/system model. Stretch work should not crowd out understanding of power/cooling/failure relationships.

### Weeks 21–22 — Docker
**Core:** Scheduler-Colosseum Missions 00–01

Establish a bare-process baseline, then run the same workload as a container.

### Weeks 23–24 — GPU containers
**Core:** Scheduler-Colosseum GPU-container checkpoint

Preserve evidence around the host-driver/container-runtime boundary.

### Weeks 25–26 — Kubernetes fundamentals
**Core:** Scheduler-Colosseum Mission 02

Run the same workload through Kubernetes and document what orchestration adds.

### Weeks 27–28 — Accelerator scheduling in Kubernetes
**Core:** Scheduler-Colosseum Mission 03

Understand the device-resource control path and test real GPU scheduling where the selected Linux/Kubernetes environment supports it. If local GPU integration is not practical, preserve a clearly labeled modeled control-path/failure case. MIG remains modeled/reference unless the chosen GPU supports MIG. Full GPU Operator deployment is an optional supported-hardware/cloud extension.

### Weeks 29–30 — Kubernetes operations and repeatability
**Core:** [Lazarus-Cluster](https://github.com/finknc01/Lazarus-Cluster) early resilience trials

Begin controlled failures and distinguish service recovery from full system recovery.

### Weeks 31–32 — Slurm fundamentals
**Core:** Scheduler-Colosseum Mission 04

Run the same workload through Slurm using the same evidence standard. Use real GPU GRES where the selected Linux GPU environment permits it; otherwise document the scheduling model honestly.

### Weeks 33–34 — Scheduler comparison and cluster failure

- **Core — Scheduler-Colosseum:** Missions 05–06 + Final
- **Supporting — Lazarus-Cluster:** control-plane/state trials

Compare execution/scheduling tradeoffs rather than declaring one universal winner.

### Weeks 35–36 — Prometheus and Grafana

- **Core — Blackbox-GPU:** Missions 00–03
- **Supporting — Checkpoint-Rush:** Missions 02–03 — small files and cache behavior

### Weeks 37–38 — GPU observability and incident practice

- **Core — Blackbox-GPU:** Missions 04–06 + Final Nightjar autopsy
- **Supporting — Checkpoint-Rush:** Missions 04–06 — shared storage, checkpoint stampede, GPU-idle correlation
- **Supporting — Silicon-Tetris:** Mission 04 — add storage/checkpoint demand to the model

### Weeks 39–40 — Automation

- **Core — Phoenix-Node:** Mission 06 + Final rebuild/recovery
- **Core — Lazarus-Cluster:** configuration drift/rebuild automation work

### Weeks 41–42 — Portfolio integration

- **Core — Lazarus-Cluster:** Final Red Dawn
- **Core — Silicon-Tetris:** Missions 05–07 + Final Capacity Board
- **Stretch/finish-if-ready — Checkpoint-Rush:** Mission 07 + Final Mercury report

If the Checkpoint final would delay the integration milestone, finish it during Weeks 45–50 targeted gap closure.

### Weeks 43–44 — Security and private AI

- **Core — Private-AI-Foundry:** Missions 00–04 + Final Obsidian Review
- **Stretch:** Mission 05 audit deep-dive and Mission 06 PPML boundary analysis

Security architecture, trust boundaries, and defensible core controls matter more than forcing every extension into two weeks.

### Weeks 45–52 — Applications, interviews, and gap closure

Use completed and in-progress project evidence for interview stories. Reopen individual missions only when job descriptions, interview feedback, or deferred stretch work identify a specific weak layer.

## Rule for overlapping labs

Some blocks intentionally show multiple repositories because the same concept appears in several systems. That does **not** mean all listed projects should be active simultaneously.

Use the canonical Notion checklist to choose the active task. Within a block, follow this priority:

1. complete the **core** mission/outcome
2. produce evidence for the milestone
3. add supporting work that directly reinforces the block
4. do stretch work only when the milestone is secure

The mission files in each standalone repository are authoritative for the actual project sequence.
