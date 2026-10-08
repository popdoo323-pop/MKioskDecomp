# Decompiled functions, round 4 (2026-10-08)

Names are placeholders. Behaviour is read from the decompile; each function's status is given.

## Rail holder (vtable 0x10012dd0)

| Slot | Address | Role (from decompile) |
|---|---|---|
| +0x0c | 0x02109198 | builds the rail: loader, split width, point count, linking (already documented) |
| +0x14 | 0x02101f84 | wrapping point getter: returns element index mod the point count at +0x4, or 0 when out of range |
| +0x1c | 0x0210941c | creates a 0x6c-byte rail object with its sub-object vtable at 0x100137ec |
| +0x2c | 0x020ec384 | reads an array of 16-byte entries, creating each through the holder's +0x1c slot |
| +0x34 | 0x020ec494 | dispatches a call (virtual +0xc) on the element at a given index |
| +0x4c | 0x020ec4c8 | reads an array of 24-byte entries (size 0x18), creating each through +0x1c |

- No direct callers exist for the getter, so the movement code reaches it through the holder's virtual table.
- The movement consumer of the point's segment parameter (+0x68) is still not identified.

## Matched this round (hand-written assembly, verified)

- ItemCoin create wrapper at 0x02133970: 12 bytes.
- ObjTire helper at 0x022ee1e4: 64 bytes, including two calls.

## Other functions read this round (not yet matched)

- 0x020ec4c8 (above), 0x02101f84 (above), 0x020ec494 (above), 0x0210941c (above).
- Byte-level context for the ObjTire update and the reset are in docs/decompiled_round2.md and round3.
