# Micro-Lab 08 — Dashboard Before the Fire

**Skills:** baseline telemetry, metrics vs. logs, leading/lagging indicators, incident timelines  
**Time:** 30–60 minutes  
**Best fit:** Weeks 35–38

## Briefing

A dashboard built after an outage can tell a good story but may not contain the signal you needed before the outage. Your task is to decide what should have been recorded first.

## Mission

Pick one component in your lab: Linux host, GPU, container workload, storage path, or scheduler.

Define a tiny baseline:

- one utilization/saturation metric
- one error/health signal
- one latency or responsiveness signal where applicable
- one log/event source

Observe the component in a normal state and record the baseline.

## Twist

Create one safe, reversible disturbance such as stopping a service, creating CPU load, filling a tiny disposable test directory to a pre-set limit, or making a workload fail.

Compare **what changed first** vs. what users/applications would notice later.

## Evidence to save

- normal baseline table
- disturbance timestamp
- metric/log timeline
- one candidate alert and why its threshold should not be guessed blindly

## Victory condition

You can explain why useful incident response begins with **knowing normal** and preserving enough history to reconstruct change over time.