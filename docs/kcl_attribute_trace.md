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
