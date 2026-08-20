# GPU Node Data Path

A simplified compute-node view. Multi-GPU/NVSwitch pieces are **modeled/reference architecture** unless measured on actual hardware.

```mermaid
flowchart LR
    ST[(Dataset / storage)] --> NIC[NIC / HCA]
    NIC --> RAM[System RAM]
    NVME[(Local NVMe)] --> RAM
    CPU[CPU / NUMA domain] <--> RAM
    RAM -->|DMA / PCIe| GPU[GPU VRAM / HBM]
    CPU -->|launches work| GPU
    GPU -->|results / checkpoints| RAM
    RAM --> NVME
    RAM --> NIC
    GPU -.multi-GPU path.-> NV[NVLink / NVSwitch modeled]
    NV -.-> GPU2[Peer GPU modeled]
    BMC[BMC / firmware] -.management.-> CPU
    BMC -.health / power / sensors.-> GPU
```

## Performance questions

1. Is data waiting on storage?
2. Is CPU preprocessing keeping up?
3. Is the transfer crossing an unfavorable NUMA/PCIe path?
4. Is GPU memory capacity/bandwidth the limit?
5. Is peer-to-peer or network communication the limit?

This diagram is the conceptual bridge between **Topology-Faultline**, **Checkpoint-Rush**, **Blackbox-GPU**, and **Silicon-Tetris**.