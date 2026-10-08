# Class inventory: ItemCoin, RaceKartChecker, ObjTire, TireMark

Sizes are from Ghidra's function data (instructions, basic blocks, calls). Bytes = 4 x instructions for PowerPC.
"Not measured" means the function has not been queried yet. Status: matched = byte-identical assembly in symbols/matches.csv.

## ItemCoin

| Address | Function | Insns | Calls | Status | Notes |
|---|---|---|---|---|---|
| 0x02133258 | empty virtual | 1 | 0 | blr only | trivial, not counted |
| 0x02133298 | returns float constant | 3 | 0 | matched | ItemCoin_Vfn_02133298 |
| 0x02132ac4 | bind emitter (conditional tail call) | 8 | 1 | matched | ItemCoin_BindEmitter_02132ac4 |
| 0x02132ae4 | tail call | 3 | 1 | matched | ItemCoin_Tail_02132ae4 |
| 0x0211b830 | state reset | 77 | 1 | not started | 9 blocks; calls thunk_FUN_02119264 |
| 0x02132ff4 | message handler | 17 | indirect | not started | calls through the vtable |
| 0x02131904 | constructor | not measured | | not started | allocates 0x320 bytes |
| 0x02131994 | load model | not measured | | not started | |
| 0x02133314 | pool init | not measured | | not started | |
| 0x02133970 | create wrapper | not measured | | not started | |

## RaceKartChecker

| Address | Function | Insns | Calls | Status | Notes |
|---|---|---|---|---|---|
| 0x0239993c | constructor | 166 | 20 | not started | too large for a first match; strings RaceKartChecker, mCoinNum, mRank |
| 0x0239c2b4 | array element constructor | not measured | | not started | |

## ObjTire

| Address | Function | Insns | Calls | Status | Notes |
|---|---|---|---|---|---|
| 0x022ee4bc | update (state machine) | 111 | 0 | not started | self-contained, 18 blocks; good later target |
| 0x022ee224 | init sound parameters | not measured | 4 | not started | calls FUN_021db890 and FUN_0205e498 three times |
| 0x022ee384 | reset | not measured | | not started | |
| 0x022ee1e4 | helper allocation | not measured | | not started | |

## TireMark

| Address | Function | Insns | Calls | Status | Notes |
|---|---|---|---|---|---|
| 0x021814a4 | loads TireMark.bfres | not measured | several | not started | calls FUN_02421764, FUN_0243a290, FUN_026436ac |
| 0x0218153c | trail manager init | not measured | many | not started | large; the class identity is still open |
| 0x021a82b4 | child object constructor | not measured | several | not started | 700-byte object; vtable 0x1001f6bc |

## Next

1. ItemCoin 0x0211b830 (77 instructions, one call): the first larger function, to test the call machinery at scale.
2. ObjTire 0x022ee4bc (111 instructions, no calls): a self-contained state machine, useful for testing branches.
3. Measure the unmeasured rows before choosing the next match.
