# Diagrams

These diagrams provide a **high-level mental model** for the learning plan. They are deliberately simplified so each can be understood at a glance, then refined as the related standalone lab produces real evidence.

All current diagrams are Mermaid-based so GitHub renders them visually while keeping the source editable and version-controlled.

## Current diagrams

- [End-to-End AI Infrastructure Stack](end-to-end-stack.md) — physical facility through workload, telemetry, automation, and security.
- [GPU Node Data Path](gpu-node-data-path.md) — storage/CPU/RAM/PCIe/GPU/network relationships inside and around a compute node.
- [AI Cluster Fabrics](ai-cluster-fabrics.md) — management, compute, storage, and out-of-band paths.
- [Orchestration Control Planes](orchestration-control-planes.md) — common control/worker concepts across Kubernetes and Slurm.
- [Observability and Incident Loop](observability-loop.md) — telemetry collection through diagnosis and prevention.
- [Rack Power and Cooling](rack-power-cooling.md) — energy in, heat out, and the constraints that meet at the rack.

The visual 52-week curriculum map lives in [`../roadmap/visual-roadmap.md`](../roadmap/visual-roadmap.md).

## Diagram rule

When a diagram includes hardware you do not physically own, label that portion as **modeled/reference architecture** rather than presenting it as measured lab topology.