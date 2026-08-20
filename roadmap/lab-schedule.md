# Standalone Lab Schedule

The ten story-driven repositories are the **hands-on implementation tracks** for the 52-week plan. They are not extra homework layered on top of the roadmap.

When a lab overlaps a weekly objective, use the lab mission as the hands-on exercise and save the authoritative evidence in that project's repository.

## Schedule by project

| Project | When to work on it | Role in the plan |
|---|---|---|
| [Phoenix-Node](https://github.com/finknc01/Phoenix-Node) | **Weeks 1–6**, GPU stage **11–12**, automation/final rebuild **39–40** | Linux node administration, GPU host setup, troubleshooting, automation, repeatability |
| [Topology-Faultline](https://github.com/finknc01/Topology-Faultline) | **Weeks 9–10**, final case by **13–14** | NUMA/PCIe/GPU/NIC/NVMe topology and locality reasoning |
| [Fabric-Faultline](https://github.com/finknc01/Fabric-Faultline) | beginner missions **3–4**, main campaign **15–18** | networking fundamentals through AI fabric concepts and failure isolation |
| [Atlas-Rack](https://github.com/finknc01/Atlas-Rack) | requirements/layout **9–10**, main campaign **19–20** | rack design, power, cooling, cabling, redundancy, serviceability |
| [Scheduler-Colosseum](https://github.com/finknc01/Scheduler-Colosseum) | continuous comparison **21–34** | Docker → GPU containers → Kubernetes → GPU Operator → Slurm → architecture verdict |
| [Lazarus-Cluster](https://github.com/finknc01/Lazarus-Cluster) | **29–30**, **33–34**, **39–40**, final **41–42** | resilience, state/control-plane failures, configuration drift, recovery automation, RTO/RPO |
| [Blackbox-GPU](https://github.com/finknc01/Blackbox-GPU) | baseline **13–14**, main campaign **35–38** | GPU telemetry, Prometheus/Grafana, logs, incident reconstruction |
| [Silicon-Tetris](https://github.com/finknc01/Silicon-Tetris) | workload deck **7–8**, constraints **19–20**, final model **41–42** | workload characterization, GPU/VRAM/power/network/storage/budget capacity planning |
| [Checkpoint-Rush](https://github.com/finknc01/Checkpoint-Rush) | fundamentals **3–4**, main investigation **35–38**, mitigation/final **41–42** | storage performance, caching, contention, checkpoint storms, GPU starvation |
| [Private-AI-Foundry](https://github.com/finknc01/Private-AI-Foundry) | **Weeks 43–44** | threat modeling, segmentation, secrets, isolation, auditing, PPML/security boundaries |

## Schedule by learning block

### Weeks 1–2 — Ubuntu server administration
**Primary:** [Phoenix-Node](https://github.com/finknc01/Phoenix-Node) Missions 00–01

Inventory the environment and investigate the boot chain while learning Linux fundamentals.

### Weeks 3–4 — Storage, host networking, enterprise Linux

- **Phoenix-Node:** Missions 02–04 — access control, storage, host networking
- **Fabric-Faultline:** Missions 00–01 — follow the packet; make two hosts communicate
- **Checkpoint-Rush:** Missions 00–03 — storage baseline, access patterns, small files, cache behavior

These projects provide the hands-on work for the conceptual block. Do not treat all three as equal priorities at once; use the current sprint to choose the active mission.

### Weeks 5–6 — Linux troubleshooting and Bash
**Primary:** Phoenix-Node checkpoint

Finish the early node missions, deliberately reproduce at least one safe failure, and document evidence-first troubleshooting.

### Weeks 7–8 — AI infrastructure fundamentals
**Primary:** [Silicon-Tetris](https://github.com/finknc01/Silicon-Tetris) Mission 00

Create the workload deck before sizing infrastructure. Learn what training, fine-tuning, batch inference, and latency-sensitive inference demand from the system.

### Weeks 9–10 — GPU server architecture

- **Topology-Faultline:** inventory, PCIe, NUMA, GPU/I/O locality cases
- **Atlas-Rack:** requirements packet and first layout

Use real laptop measurements where possible and clearly label production-scale topology/rack elements as modeled.

### Weeks 11–12 — GPU Linux setup
**Primary:** Phoenix-Node GPU stage

Bring the node from Linux host to validated NVIDIA driver/CUDA/GPU state.

### Weeks 13–14 — GPU diagnostics

- **Topology-Faultline:** close the final forensic case
- **Blackbox-GPU:** establish the first GPU telemetry baseline

### Weeks 15–16 — Ethernet and physical network layer
**Primary:** Fabric-Faultline main campaign

Advance through switching, VLAN/routing, DNS/application reachability, and physical-layer context.

### Weeks 17–18 — RDMA, RoCE, InfiniBand, AI fabrics
**Primary:** Fabric-Faultline advanced campaign

Move into leaf-spine, congestion, collective communication, and RDMA/RoCE/InfiniBand comparison.

### Weeks 19–20 — Rack power, cooling, and interconnect

- **Atlas-Rack:** main design campaign
- **Silicon-Tetris:** add power and network constraints

### Weeks 21–22 — Docker
**Primary:** Scheduler-Colosseum Missions 00–01

Establish a bare-process baseline, then run the same workload as a container.

### Weeks 23–24 — GPU containers
**Primary:** Scheduler-Colosseum GPU-container checkpoint

Preserve evidence around the host-driver/container-runtime boundary.

### Weeks 25–26 — Kubernetes fundamentals
**Primary:** Scheduler-Colosseum Kubernetes round

Run the same workload through Kubernetes and document what orchestration adds.

### Weeks 27–28 — NVIDIA GPU Operator
**Primary:** Scheduler-Colosseum GPU scheduling round

Make the physical GPU visible and schedulable through the Kubernetes contender.

### Weeks 29–30 — Kubernetes operations and repeatability
**Primary:** [Lazarus-Cluster](https://github.com/finknc01/Lazarus-Cluster) early resilience trials

Begin controlled failures and distinguish service recovery from full system recovery.

### Weeks 31–32 — Slurm fundamentals
**Primary:** Scheduler-Colosseum Slurm round

Run the same workload through Slurm using the same evidence standard.

### Weeks 33–34 — GPU scheduling with Slurm

- **Scheduler-Colosseum:** comparison, sabotage round, final architecture verdict
- **Lazarus-Cluster:** control-plane and state/storage failures

### Weeks 35–36 — Prometheus and Grafana

- **Blackbox-GPU:** metrics pipeline and dashboards
- **Checkpoint-Rush:** shared-storage investigation begins

### Weeks 37–38 — GPU observability and incident practice

- **Blackbox-GPU:** incident reconstruction and Nightjar autopsy
- **Checkpoint-Rush:** checkpoint stampede and GPU-idle correlation

### Weeks 39–40 — Automation

- **Phoenix-Node:** automate/rebuild the node
- **Lazarus-Cluster:** configuration drift and recovery automation

### Weeks 41–42 — Portfolio integration

- **Lazarus-Cluster:** final compound recovery
- **Silicon-Tetris:** finish the capacity model
- **Checkpoint-Rush:** mitigation tournament and final incident report

This block is about integrating evidence, not starting three unrelated new projects.

### Weeks 43–44 — Security and private AI
**Primary:** [Private-AI-Foundry](https://github.com/finknc01/Private-AI-Foundry)

Complete the Project Obsidian security campaign and connect privacy-preserving ML concepts to infrastructure controls without conflating privacy with system security.

### Weeks 45–52 — Applications, interviews, and gap closure

Use the completed and in-progress project evidence for interview stories. Reopen individual missions only when job descriptions or interview feedback identify a specific weak layer.

## Rule for overlapping labs

Some blocks intentionally show multiple repositories because the same concept appears in several systems. That does **not** mean all listed projects should be active simultaneously.

Use [`current-sprint.md`](current-sprint.md) and the execution rule:

1. one primary mission
2. one supporting concept
3. one evidence target

Then rotate to the next scheduled lab when the primary mission reaches a natural stop point.
