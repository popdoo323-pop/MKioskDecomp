# Decompiled functions, round 3 (2026-10-08)

Names are placeholders. Behaviour is read from the Ghidra decompile. Nothing here is matched yet.
This round covers 18 functions, plus the two from round 2.

## Verified or corrected

- KartUnit buffer (FUN_021a8248, FUN_021a819c): each tire-mark slot gets a heap named `KartUnit%d-%d` of 0x1b3333 bytes,
  zero-filled through the alias for OSBlockSet. This confirms the size inferred earlier.
- Four wheels (FUN_021a6f3c): creates four wheel child objects, each with callbacks FUN_021a7bb4, FUN_021a7c7c,
  FUN_021a7c9c and FUN_021a7dd8. Four tire-mark slots per kart.
- RaceKartChecker element (FUN_0239c2b4): a 12-byte record with 9 at +0x0, a pointer to DAT_10089094 at +0x4,
  0x3b at +0x8 and 999 at +0xa. This matches the header offsets already written.
- Trail pool (FUN_02183d80, FUN_02183e0c): the trail manager's +0x28 array is a pool of child records, filled by
  these two functions with a write index at +0x30. The init method does not fill it directly. This resolves the
  apparent conflict with the lifecycle loops, which read the pool after it is filled.
- Lifecycle walk (FUN_02183c44): calls the children's virtual at +0x5c. FUN_021839f4 calls +0x74 on the same kind
  of record. Both offsets are in use, so the record type is not yet confirmed.

## ObjTire

- Reset (FUN_022ee384): sets the timer at +0x19c to 0xffff (disabled), copies nine words from the kart data at
  +0xc4+8 into a buffer at +0x60, and sets +0x1a4 from a float parameter times a short at +0x1b0.
- Sound binding (FUN_022ee224): binds pSE_OBJ_TIRE_SLIDE, pSE_OBJ_TIRE_HIT and pSE_OBJ_TIRE_COL.
- Helper (FUN_022ee1e4): allocates 0x38 bytes and stores the result at +0x128.

## ItemCoin

- Base init (FUN_0211b4c4): looks up the item name in a table of 0x24 entries (0x184 bytes) indexed by item type +1,
  then calls the virtuals at +0x18c (load model), +0x1a4, +0x1ec, +0x194 and +0x19c. Calls the shared function
  FUN_0210e9b4 and reads a flag at +0x35 of its result.
- Effects (FUN_021212c4): creates the splash effects WaterSplash, SandSplash and LavaSplash, then binds a loop of
  seven sound names (SE_ITM_FIREBALL_HIT_NO_DAMAGE and others) to records at +0x9e onwards.
- Model load (FUN_02131994): loads /item/ItemCoin/ItemCoin.bfres, then calls the animation lookup FUN_02741100 and
  stores the handle at +0x304. This is the "Wait" animation noted earlier.
- Creator wrapper (FUN_02133970): calls FUN_02131904 with type 0 and the item id.
- Message dispatch (FUN_02132ff4): type 0 calls the object's virtual at +0x2c; type 1 calls the virtual at +0x64.

## Still open

- The state tables used by ObjTire's update and ItemCoin's reset (where the table data lives).
- The thunks FUN_02183f40 and FUN_02183f74, which create the trail records.
- Virtual slots 0x5c and 0x74 on the trail records.
- Functions at 0x02183944 and 0x02183d54, which Ghidra has not defined.
