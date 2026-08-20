#!/usr/bin/env bash
set -euo pipefail

# Harmless foreground process for Micro-Lab 01. It writes a heartbeat to the
# journal/stdout so systemd state and logs are easy to inspect.

interval="${LAB_SLEEPER_INTERVAL_SECONDS:-10}"

echo "lab-sleeper starting; pid=$$ interval=${interval}s"
trap 'echo "lab-sleeper stopping; pid=$$"; exit 0' TERM INT

while true; do
  echo "lab-sleeper heartbeat $(date --iso-8601=seconds) pid=$$"
  sleep "${interval}"
done
