# Rack Power and Cooling

A high-level physical path showing how electrical capacity becomes compute and then heat that must be removed.

```mermaid
flowchart LR
    UTIL[Utility / generator / UPS] --> DIST[Distribution / busway / PDU]
    DIST --> RPDU[Rack PDU A/B]
    RPDU --> PSU[Server PSUs]
    PSU --> LOAD[CPU + GPU + memory + NIC + storage]
    LOAD --> HEAT[Heat]
    HEAT --> AIR[Air cooling path]
    HEAT --> LIQ[Direct-to-chip liquid path]
    AIR --> FAC[CRAH / plant heat rejection]
    LIQ --> CDU[CDU / manifold]
    CDU --> FAC
```

## Constraints meet at the rack

```mermaid
flowchart TB
    P[Power capacity] --> D[Deployable GPU density]
    C[Cooling capacity] --> D
    N[Network / cable density] --> D
    S[Serviceability] --> D
    R[Redundancy requirements] --> D
    W[Weight / floor / physical space] --> D
```

**Atlas-Rack** explores these tradeoffs directly; **Silicon-Tetris** turns several of them into capacity constraints.