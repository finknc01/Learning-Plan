# Micro-Lab 01 — The Sleeping Service

**Skills:** `systemctl`, `journalctl`, process/service boundaries, startup state, evidence-first troubleshooting  
**Time:** 20–40 minutes  
**Best fit:** Weeks 1–2

## Briefing

A boring internal service was healthy yesterday. Today the application team says it is “down.” Your only clue is that the machine itself still responds over SSH.

## Mission

Choose a harmless service in a disposable Linux VM. Record its healthy state, stop it deliberately, then diagnose the failure **without starting it immediately**.

### Investigate

Use evidence such as:

```bash
systemctl status <service>
systemctl is-enabled <service>
journalctl -u <service> --since today
ps aux
ss -lntup
```

Answer:

- Is the service installed?
- Is it enabled?
- Is it running?
- Was it started and then failed, or never started?
- Was it expected to own a socket/port?
- What evidence tells you which layer is actually broken?

## Twist

After restoring it, disable automatic startup and reboot the VM. Diagnose why the service is healthy when manually started but absent after reboot.

## Evidence to save

- healthy vs. failed `systemctl status`
- one relevant journal excerpt
- a short symptom → evidence → cause → fix note

## Victory condition

You can explain the difference between **installed, enabled, active, failed, and listening**, and you can prove the service state without guessing.