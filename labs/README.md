# Labs

This directory contains **small, focused exercises** that support the 52-week plan without competing with the ten standalone story-driven portfolio projects.

The standalone projects remain the main hands-on campaigns. These micro-labs are for one concept, one failure, or one comparison that can usually be completed in **20–60 minutes** and turned into a small evidence artifact.

## Micro-lab index

| Lab | Best time | Main skill |
|---|---|---|
| [01 — The Sleeping Service](01-sleeping-service.md) | Weeks 1–2 | systemd, logs, process/service reasoning |
| [02 — The Vanishing Mount](02-vanishing-mount.md) | Weeks 3–4 | block devices, filesystems, mounts, persistence |
| [03 — Packet Postcard](03-packet-postcard.md) | Weeks 3–4 | interfaces, routes, neighbors, DNS, packet path |
| [04 — Permission Heist](04-permission-heist.md) | Weeks 5–6 | ownership, mode bits, groups, evidence-first troubleshooting |
| [05 — The Missing GPU](05-missing-gpu.md) | Weeks 11–14 | driver/runtime/toolkit boundaries and GPU validation |
| [06 — The Container That Swore It Wasn't the Host](06-container-boundary.md) | Weeks 21–24 | namespaces, mounts, devices, host/container boundary |
| [07 — The Scheduler's Alibi](07-scheduler-alibi.md) | Weeks 25–34 | placement decisions, requested vs. allocated resources |
| [08 — Dashboard Before the Fire](08-dashboard-before-the-fire.md) | Weeks 35–38 | baselines, metrics, alerts, incident timelines |
| [09 — Twice Is the Test](09-twice-is-the-test.md) | Weeks 39–40 | idempotency, automation drift, safe repeatability |

## Micro-lab rule

Each lab should end with four things:

1. **What I expected**
2. **What I observed**
3. **What the evidence proved**
4. **The next physical action**

Do not turn these into polished standalone projects. If a micro-lab grows into a substantial engineering story, move that work into the relevant dedicated repository.

## Major story-driven labs

- [Phoenix-Node](https://github.com/finknc01/Phoenix-Node)
- [Topology-Faultline](https://github.com/finknc01/Topology-Faultline)
- [Fabric-Faultline](https://github.com/finknc01/Fabric-Faultline)
- [Scheduler-Colosseum](https://github.com/finknc01/Scheduler-Colosseum)
- [Blackbox-GPU](https://github.com/finknc01/Blackbox-GPU)
- [Private-AI-Foundry](https://github.com/finknc01/Private-AI-Foundry)
- [Atlas-Rack](https://github.com/finknc01/Atlas-Rack)
- [Lazarus-Cluster](https://github.com/finknc01/Lazarus-Cluster)
- [Silicon-Tetris](https://github.com/finknc01/Silicon-Tetris)
- [Checkpoint-Rush](https://github.com/finknc01/Checkpoint-Rush)

Their timing is mapped in [`../roadmap/lab-schedule.md`](../roadmap/lab-schedule.md).