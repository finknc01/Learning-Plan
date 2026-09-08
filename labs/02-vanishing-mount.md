# Micro-Lab 02 — The Vanishing Mount

**Skills:** block devices, XFS, mount points, `/etc/fstab`, persistence, recovery  
**Time:** 30–60 minutes  
**Best fit:** Weeks 3–4

## Briefing

A data directory exists, the disk exists, and the RHEL server booted normally—but the application says its data volume vanished after maintenance.

## Mission

In a disposable RHEL VM, attach a small virtual disk, inspect it before changing anything, create an XFS filesystem on a safe lab partition/LV, mount it, place a marker file on it, and verify the marker is visible.

Use tools such as:

```bash
lsblk
blkid
findmnt
df -hT
xfs_info
mount
```

Then make the mount persistent with `/etc/fstab` using a stable identifier such as UUID.

## Twist

Before rebooting, copy your working `fstab` somewhere safe. Introduce one reversible mistake to the lab mount configuration, then validate safely with:

```bash
sudo mount -a
```

Diagnose the failure before rebooting.

## Evidence to save

- device/filesystem/mount-path diagram
- `lsblk` or `findmnt` output before and after
- working `fstab` entry
- one paragraph explaining why “the disk exists” does not mean “the XFS filesystem is mounted where the application expects it”

## Victory condition

You can trace **device/LV → XFS filesystem → mount point → application path** and validate persistence without relying on memory.
