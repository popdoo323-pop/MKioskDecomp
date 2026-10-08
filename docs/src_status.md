# src status (2026-10-08)

Every file here is hand-written C++ from the analysis. None is decompiler output. None is matched.

| File | What it is | Evidence | Status |
|---|---|---|---|
| include/Common/StateMachine.hpp, src/Common/StateMachine.cpp | Shared state machine: pending transition, exit, enter, per-frame action | ObjTire update, ItemCoin reset, bird update | reconstruction, not matched |
| include/Game/MapObj/RailPoint.hpp, src/Game/MapObj/RailPoint.cpp | Rail point: rotation from Euler angles, segment link | FUN_020fb9b0, FUN_020fbe88, FUN_021090a8 | reconstruction; rotation is orthonormal, convention unverified |
| include/Obj/ObjTire.hpp, src/Obj/ObjTire.cpp | Tire map object | header only; no source yet | not started |
| include/Game/Item/ItemCoin.hpp, src/Game/Item/ItemCoin_*.cpp | ItemCoin; two assembly-first matches | symbols/matches.csv | matched (assembly) |

## Checks

- Both new .cpp files compile as C++17 on the host (g++ -fsyntax-only). This is not a PowerPC build.
- The rotation matrix is orthonormal to within 4.4e-16 over 1000 random angles.

## Not done

- No matched source yet. The reconstructions above count as code only when they match the original bytes, which needs the compiler.
- The state machine's exact ordering is inferred from three classes. ObjTire's per-state table is not read yet.
- The bird's movement code (the consumer of the segment parameter) is not found yet.
