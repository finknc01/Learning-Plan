# Current Sprint — Weeks 1–2

This file exists to answer one question quickly:

> **What should I work on next?**

Only the current primary mission, supporting concept, and evidence target should be treated as active. The rest of the 52-week roadmap remains context, not an immediate backlog.

## NOW — Primary mission

**[Phoenix-Node — Mission 00: Triage](https://github.com/finknc01/Phoenix-Node/blob/main/missions/00-triage.md)**

Inventory the node/environment and record what is actually present before changing anything.

Focus on observation first. Capture enough evidence that a future reader can understand the starting state without relying on memory.

## NEXT — Supporting concept

Be able to explain this startup path well enough to identify where a failure could occur:

```text
firmware / UEFI
    ↓
bootloader
    ↓
Linux kernel
    ↓
initramfs
    ↓
systemd
    ↓
services
    ↓
user processes
```

The goal is not to memorize every implementation detail. The goal is to understand the boundaries and failure points.

## EVIDENCE — Finish line

Before moving to Mission 01:

- save a short node/environment inventory in `Phoenix-Node`
- record the commands or observations used to establish the baseline
- note anything unexpected or unknown
- leave one explicit breadcrumb describing the next physical action for Mission 01

A good breadcrumb looks like:

> Open Mission 01, draw the observed boot path, then use `systemd-analyze` and `journalctl -b` to identify what starts after the kernel hands control to userspace.

## Session options

- **15 minutes:** open Mission 00, inspect one category of the environment, write the next action.
- **45 minutes:** complete one meaningful portion of the inventory and save evidence.
- **90 minutes:** finish the baseline, organize the artifact, and prepare the Mission 01 restart point.

Do not add new active work until this sprint's primary mission has a clear evidence trail and restart point.
