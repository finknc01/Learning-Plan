# Micro-Lab 06 — The Container That Swore It Wasn't the Host

**Skills:** namespaces, cgroups, mounts, process isolation, device exposure, host/container responsibility  
**Time:** 30–60 minutes  
**Best fit:** Weeks 21–24

## Briefing

A container claims to be isolated. Your task is to identify what is truly separate, what is shared, and what the host still controls.

## Mission

Run a simple container and compare host vs. container views of:

- hostname
- process list
- network interfaces
- filesystem/mounts
- kernel version
- resource limits

Useful commands may include:

```bash
hostname
ps aux
ip addr
mount
uname -a
cat /proc/1/cgroup
```

## Twist

Add a bind mount or named volume and explain why persistence does not mean the container owns a separate kernel or physical disk.

If using GPU containers later, extend the diagram to show:

```text
container app → CUDA libs/runtime hooks → host NVIDIA driver → kernel → GPU
```

## Evidence to save

- host vs. container comparison table
- one diagram of the isolation boundary
- one sentence for each item: **container-owned, namespaced, mounted/exposed, or host-owned**

## Victory condition

You can explain containers as isolated processes on a shared kernel rather than “tiny VMs.”