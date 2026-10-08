# src status (2026-10-08)

Every C++ file here is hand-written from the analysis. None is decompiler output. Files are marked in their header as
HAND-WRITTEN, NOT YET MATCHED and counted separately from matches. A file becomes matched only when its compiled or assembled
bytes equal the original.

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

## Path to matched

- C++ files need the game's compiler and flags to produce matching bytes. Until that is identified, they stay unmatched.
- Individual functions can be matched now with the assembly-first route (see docs/asm_matching.md). A reconstruction can be
  matched function by function once its original bytes are written as assembly and proven with asmmatch.py.

## Matching map (2026-10-08)

Each C++ function is matched against the game function it describes. A file gets the MATCHED banner only when every
function in it is matched.

| C++ function | Game function | Size | State |
|---|---|---|---|
| RailPoint::LinkNext | 0x021090a8 | 96 bytes, no calls | MATCHED (src/asm/Game/MapObj/RailPoint_LinkNext_021090a8.s) |
| RailPoint::SetRotationFromEuler | 0x020fbe88 | calls cos and sin (0x02933110, 0x02933944) | not started |
| RailPath::LinkChain | 0x02109198 (builder) | large, several calls and virtual calls | not started |
| StateMachine::Update | 0x022ee4bc (ObjTire update), same design | 111 instructions, no calls | not started |
| StateMachine::Reset | 0x0211b830 (ItemCoin reset) | 77 instructions, one call | not started |
| ItemCoinStates | 0x0211b830 | as above | not started |

Files keep the NOT YET MATCHED banner until every function in them is matched:
- include/Game/MapObj/RailPoint.hpp and src/Game/MapObj/RailPoint.cpp: waiting on SetRotationFromEuler.
- include/Game/MapObj/RailPath.hpp and src/Game/MapObj/RailPath.cpp: waiting on LinkChain.
- include/Common/StateMachine.hpp and src/Common/StateMachine.cpp: waiting on Update and Reset.
- include/Game/Item/ItemCoinStates.hpp and src/Game/Item/ItemCoinStates.cpp: waiting on the reset path.
