# OUT Gameplay architecture

The custom LAN work must not mix networking code with gameplay tuning.

## Layers

1. **Skyrim integration** reads and applies game state.
2. **Together networking** transports synchronized state.
3. **OUT Gameplay** owns optional balance and rules configuration.
4. **LAN deployment** installs and launches the same build on both PCs.

## Authority rule

For the two-player target, shared world decisions should have one authoritative source. The initial rule is simple: if a shared world state has no explicit owner, the host owns it.

## Configuration contract

`Config/coop.toml` defines LAN and synchronization policy. Gameplay configuration will be added as a separate contract and then wired into runtime code only after the deployment/build path is stable.

## Planned gameplay seams

- difficulty rules
- resource economy
- progression and level-scaling policy
- actor stat policy
- co-op scaling
- future mechanics toggles

The purpose of these seams is to let gameplay evolve without rewriting transport code.
