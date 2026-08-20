# Micro-Lab 07 — The Scheduler's Alibi

**Skills:** requested resources, scheduler decisions, placement, node state, control plane vs. worker execution  
**Time:** 30–60 minutes  
**Best fit:** Weeks 25–34

## Briefing

A workload is not running. The application team says “the cluster is broken.” The scheduler says it has done exactly what it was told.

## Mission

Use whichever scheduler you are studying—Kubernetes or Slurm—and submit a harmless workload with a clear resource request.

Record:

1. what the workload requested
2. what resources the cluster advertised
3. which component made the placement decision
4. which node was selected
5. what component actually launched the workload

## Twist

Make one request intentionally unschedulable in a safe lab—for example a resource quantity or node constraint that no node satisfies.

Do **not** immediately change the request. First collect the scheduler's explanation.

## Evidence to save

- request → scheduler → node → runtime flow diagram
- pending/unschedulable evidence
- the exact condition that prevented placement
- the smallest change that makes the workload schedulable

## Victory condition

You can distinguish **scheduler refusal, node/runtime failure, and application failure** from one another.