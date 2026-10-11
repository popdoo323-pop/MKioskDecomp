# Terrain type writer: trace status (2026-10-07)

Binary SHA-256 `4dd6b212...409c8d`. Names are proposals; the binary is stripped.

## Reader (known)
- `FUN_02072608` (ground tracker) reads terrain type at `obj+0x210` and variant at `obj+0x214`.
- Called from `thunk_FUN_02072608` (at 0x02072ebc), which is called from `FUN_020799f8` (per-frame kart update, 0x020799f8).
  That function runs only when a race-state check passes, then calls the tracker followed by about 25 other kart subsystems.

## Attribute source (candidate)
- `FUN_023c9460` (0x023c9460) constructs a 0x1b0-byte kart ground-state object with vtable `0x10092270`.
- Reflected fields it registers (names only; the offsets are not recorded by the reflection call, so they are unknown): `mpDriveSpeed`, `mpDriveSpeedRatio`, `mpGravityVec`, `mpMoveMtx`, `mpCollidedGround`,
  `mpCollidedWall`, `mpGroundPos`, `mpAirCounter`, `mGndAttr`, `mOnDirtRate`, `mbAntiGColSpin`, `mpCollidedWallObject`.
- `mGndAttr` is a single byte at `obj+0x5c`, initialized to 0. It is the most likely collision-derived attribute.
- The ground-state object is smaller than 0x210, so the tracker object is a different object. The value must be copied
  between them somewhere. That copy is not found yet.

## Ruled out
- `FUN_0219f79c`: builds kart effects and binds emitter names including "GroundAttribute". That string is an effect name, not the field.
- `FUN_023cab40`, `FUN_023cab54`, `FUN_023caba0`: return type-name strings ("RecorderKartVehicleMove" and similar).
- `FUN_023ca2c0`: returns 0.

## Next steps
1. Find the writer of `mpCollidedGround` during the ground hit test. Its offset is not verified yet; find it by following the constructor's call sequence or by tracing the ground-hit function. The attribute copy should be next to it.
2. Find the per-frame update slot of vtable 0x10092270 (the function pointer slots are at +0x04, +0x0c, +0x14, ...).
3. Find the function that copies a byte into the tracker object's +0x210 from the ground state's +0x5c.

## Editor names

The editor-to-binary mapping, including material and special options, is in
`docs/terrain_types_crossref.md`.

## Resolved 2026-10-10: terrain writer is FUN_021c1d00

- `FUN_021c1d00` (0x021c1d00, 4884 bytes) is the ground-hit and tracker update. Its `param_1` is the kart ground-state object.
- It reads the collision result for the current triangle. The KCL attribute is a 16-bit field at `+4` of that triangle record.
- Terrain: `param_1+0x1e0 = attr & 0x1F` (0 to 31, the name table index).
- Variant: `param_1+0x1e4 = (attr >> 5) & 7`, the value the tracker reads at `+0x214`.
- No ground: both fields are set to `0xFFFFFFFF`. `FUN_02072608` returns early on a negative value, which matches.
- This closes the chain: `FUN_021c1d00` writes `+0x1e0` of the object that `FUN_0218624c` reads through `obj+0x24`.
- Evidence: the mask and the store sit next to each other, the sentinel matches the reader's check, and the variant matches `+0x214`. The field names are our proposals; the offsets come from the decompile.

## Checked against real data 2026-10-10: Gu_MarioCircuit course.kcl

Method: the OBJ export (Gu_MarioCircuit-coursekcl.obj) names each face group `COL_<hex attribute>`. Counting faces per attribute gives 27 distinct values over 37,256 faces. The KCL binary header was not decoded, so this check is through the OBJ export, not the raw prisms.

- Terrain index `attr & 0x1F`: the top groups are WALL (17), ROAD (0), LWALL (20), RESQ (16), DIRT (6). The single biggest attribute is `0x000` (ROAD), with 5,404 faces. Named groups fit their names: RESQ = 0x030, OUTF = 0x017, ITROAD = 0x00F, ZONE (31) is used.
- Variant `(attr >> 5) & 7`: observed values 0 to 5, all within the 0 to 7 range.
- Bit 11 (`0x800`) is set on the LWALL and WALL groups (0x854, 0x851) and is separate from the terrain and variant fields.
- Conclusion: the low five bits are the 32-name terrain index and bits 5 to 7 are the variant, as `FUN_021c1d00` expects. Limit: this is inferred from the OBJ export, not from the raw KCL prisms.
