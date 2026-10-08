# Rail point format (decompiled, 2026-10-08)

Source: the BYAML point reader FUN_020fb9b0 and its helpers. Offsets are from the decompile. Names are placeholders.
Positions are game data and are kept in private/mario_circuit_rail_points.csv.

## Point object layout

| Offset | Contents | Source key |
|---|---|---|
| +0x00 | Translate X, Y, Z (floats) | "Translate" |
| +0x0c | Bezier control point 0 (X, Y, Z). Defaults to Translate if absent | "ControlPoints" index 0 |
| +0x18 | Bezier control point 1 (X, Y, Z). Defaults to Translate if absent | "ControlPoints" index 1 |
| +0x24 | Scale X, Y, Z (floats) | "Scale" |
| +0x30 | Rotation matrix, 9 floats (3x3) | "Rotate", converted by FUN_020fbe88 |
| +0x54 | prm1 (float) | "prm1", the editor's Param 1 |
| +0x58 | prm2 (float) | "prm2", the editor's Param 2 |
| +0x60 | Base value (cumulative index along the chain) | set by the rail builder |
| +0x64 | Next value (the next point's base value) | FUN_021090a8 |
| +0x68 | Reciprocal of the segment length (next - base) | FUN_021090a8 |

## Reader helpers

- FUN_0254bb90 reads three floats under the UTF-16 keys X, Y, Z.
- FUN_0254a988 accepts a value only when its type byte is 0xD2, which is BYAML's float type.
- FUN_0254bd78 reads an indexed entry from an array (the control points).
- FUN_020fbe88 converts Euler angles in radians into the 3x3 rotation matrix. It uses cos and sin from FUN_02933110 and
  FUN_02933944.

## Rail builder (FUN_02109198)

- Calls the rail loader FUN_020fbbd8, then reads SplitWidth (+0x2c), PtNum (+0x20) and ObjPt (+0x28).
- For each point, it links the point to the next one with FUN_021090a8. That function sets +0x64 to the next point's value
  and +0x68 to 1 / (next - base). So each segment is parameterised from 0 to 1.
- Editor fields confirmed by this: Obj Path Split Width is SplitWidth, the point count is PtNum, and the Obj Path checkbox is ObjPt.

## Not yet established

- What reads prm1 (+0x54) and prm2 (+0x58) during movement. Both are 0.000 in every screenshot, so they have no visible effect here.
- Where the base value at +0x60 comes from. The rail builder sets it through FUN_021090a8, but the source of the per-point
  value is not identified.
- What the ushort at +0x62 holds. The builder reads it from the next point, and the reader does not set it.
- The consumer of +0x68, which drives movement along the segment.

## Holder slots (added in round 4)

The rail holder's wrapping getter (0x02101f84) returns the point at index mod the point count. The builder uses it, so
the last point is handled by the path slot rather than by index. See docs/decompiled_round4.md.
