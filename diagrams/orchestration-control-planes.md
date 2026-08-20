# Orchestration Control Planes

Kubernetes and Slurm differ significantly, but both separate **decision-making** from **work execution**.

```mermaid
flowchart LR
    U[User / CI / job submitter] --> CP{Control plane / scheduler}
    CP -->|placement decision| N1[Worker / compute node]
    CP -->|placement decision| N2[Worker / compute node]
    N1 --> R1[Container runtime / task launcher]
    N2 --> R2[Container runtime / task launcher]
    R1 --> W1[Workload]
    R2 --> W2[Workload]
    N1 -->|state / health| CP
    N2 -->|state / health| CP
```

## Kubernetes mapping

```text
API server/controllers/scheduler → kubelet → container runtime → pod/container
```

## Slurm mapping

```text
slurmctld → slurmd → job step/task
```

The point is not to pretend the systems are identical. The diagram creates a common set of questions:

- who holds desired/requested state?
- who decides placement?
- who advertises node resources?
- who actually launches the workload?
- what happens when the control plane is unavailable?

Use **Scheduler-Colosseum** for the comparison and **Lazarus-Cluster** for failure/recovery behavior.