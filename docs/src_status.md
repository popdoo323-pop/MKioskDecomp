# src status (2026-10-08)

Every C++ file here is hand-written from the analysis. None is decompiler output. Reconstructions are marked in their
header and counted separately from matches.

| File | What it is | Evidence | Tests | Status |
|---|---|---|---|---|
| include/Common/StateMachine.hpp, src/Common/StateMachine.cpp | Shared state machine: pending transition, exit, enter, per-frame action | ObjTire update, ItemCoin reset, bird update | tests/test_state_machine.cpp | reconstruction, host-tested |
| include/Game/MapObj/RailPoint.hpp, src/Game/MapObj/RailPoint.cpp | Rail point: rotation from Euler angles, segment link | FUN_020fb9b0, FUN_020fbe88, FUN_021090a8 | orthonormal check (in the notes) | reconstruction; rotation order unverified |
| include/Game/MapObj/RailPath.hpp, src/Game/MapObj/RailPath.cpp | Rail path: chain linking, segment lookup | FUN_02109198 (linking rule) | tests/test_rail_path.cpp | linking reconstructed; SegmentAt is a hypothesis |
| include/Game/Item/ItemCoinStates.hpp, src/Game/Item/ItemCoinStates.cpp | ItemCoin states on the shared machine | reset path in FUN_0211b830 | tests/test_item_coin_states.cpp | reconstruction; per-state actions not known |
| include/Obj/ObjTire.hpp, src/Obj/ObjTire.cpp | Tire map object | header only | none | source not started |
| src/asm/Game/Item/*.s | Assembly-first matches (3) | symbols/matches.csv | assembled and compared | matched |

## Checks run

- Every .cpp compiles as C++17 with -Wall -Wextra on the host. This is not a PowerPC build.
- Host tests pass: state machine (order of exit, enter and update, and the frame counter), rail linking (chain order,
  last point uses the path slot, zero span gives zero parameter), and ItemCoin reset (lands in state 0).
- The rotation matrix is orthonormal to within 4.4e-16 over 1000 random angles.

## Not done

- No matched C++ function yet. A reconstruction counts only when it reproduces the original bytes, which needs the game's
  compiler. The assembly-first route is the one that produces real matches now.
- RailPath::SegmentAt is a hypothesis. Movement along the rail is not identified.
- The state machine's ordering is inferred from three classes.
