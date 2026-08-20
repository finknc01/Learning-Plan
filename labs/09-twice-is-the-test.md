# Micro-Lab 09 — Twice Is the Test

**Skills:** idempotency, configuration drift, safe automation, validation after repeated execution  
**Time:** 30–60 minutes  
**Best fit:** Weeks 39–40

## Briefing

An automation script works perfectly the first time. The second run creates duplicates, changes permissions, or fails because the resource already exists.

That is the trap.

## Mission

Choose one harmless repeatable task:

- create/configure a user
- install a package
- deploy a config file
- create a directory tree
- configure a service

Implement it in Bash or Ansible.

Run it once. Validate the target state. Then run it **again without resetting the environment**.

## Twist

Change one piece of the target state manually between runs and observe whether the automation detects/corrects drift or silently leaves it.

## Evidence to save

- first-run output
- second-run output
- before/after state comparison
- a sentence describing what “idempotent enough” means for this task
- one identified blast-radius risk

## Victory condition

A second execution is boring, predictable, and explainable.