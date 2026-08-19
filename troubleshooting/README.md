# Troubleshooting and Incident Practice

This directory contains incident-style investigations from labs and simulated failures.

Use the following reasoning chain:

```text
symptom → affected layer → evidence → hypothesis → test → fix → prevention
```

Good entries should show how evidence was used to narrow the failure domain rather than simply listing commands that happened to fix the problem.

## Planned examples

- failed systemd service
- bad filesystem mount
- DNS / routing / SSH failure
- NVIDIA driver / CUDA mismatch
- GPU Xid / ECC / thermal issue
- container GPU visibility problem
- Kubernetes pod / scheduling failure
- GPU Operator problem
- Slurm GRES / scheduling problem
- observability-driven GPU incident

Use [`../templates/incident-template.md`](../templates/incident-template.md) for substantial writeups.
