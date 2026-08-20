# Micro-Lab 03 — Packet Postcard

**Skills:** interface state, IP addressing, route choice, neighbor discovery, DNS, sockets, packet capture  
**Time:** 30–60 minutes  
**Best fit:** Weeks 3–4, before the main Fabric-Faultline campaign

## Briefing

Imagine a packet is a postcard trying to reach a friend. Your job is to write down every decision the host makes before the postcard leaves the machine.

## Mission

Pick one destination: another lab host, your default gateway, or a safe public hostname.

Before sending traffic, predict the path:

```text
application
  ↓
name resolution if needed
  ↓
destination IP
  ↓
routing decision
  ↓
next hop
  ↓
neighbor/MAC resolution
  ↓
interface
  ↓
frame leaves host
```

Inspect the host with:

```bash
ip addr
ip link
ip route
ip neigh
ss
ping
dig
tcpdump
```

## Twist

Compare two failures:

1. a name-resolution failure
2. a reachability/path failure

The point is to prove that “I cannot reach the website” can originate at very different layers.

## Evidence to save

- one hand-drawn or Mermaid packet path
- route lookup and neighbor evidence
- one short packet capture
- a two-column comparison: DNS failure vs. network-path failure

## Victory condition

You can answer: **Where was the packet supposed to go next, and what evidence proves whether it got that far?**