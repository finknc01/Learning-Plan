# Micro-Lab 05 — The Missing GPU

**Skills:** NVIDIA driver vs. kernel module vs. CUDA toolkit/runtime vs. application, validation boundaries  
**Time:** 30–60 minutes  
**Best fit:** Weeks 11–14

## Briefing

An application reports “CUDA unavailable.” That statement is not a diagnosis. The GPU might be invisible to Linux, the driver may be broken, the runtime may be mismatched, or the application may simply be using the wrong environment.

## Mission

On the GPU-capable environment you are using for the plan, build a dependency ladder and validate each boundary separately.

Possible evidence:

```bash
lspci | grep -i -E 'nvidia|vga|3d'
lsmod | grep nvidia
nvidia-smi
cat /proc/driver/nvidia/version
nvcc --version
```

Also validate from the framework/application layer when available.

## Dependency ladder

```text
PCIe device visible
  ↓
kernel driver/module
  ↓
user-space driver libraries
  ↓
CUDA runtime/toolkit as needed
  ↓
framework/application
```

## Twist

Write three hypothetical symptoms and identify the **lowest layer you would test first** for each. Do not manufacture unsafe driver failures just to create evidence.

## Evidence to save

- dependency ladder annotated with your actual environment
- validation command/output at each available layer
- one compatibility note distinguishing host driver from toolkit/runtime

## Victory condition

“CUDA unavailable” becomes a stack of testable boundaries rather than one vague problem.