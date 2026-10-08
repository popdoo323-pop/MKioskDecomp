# Bird rails and lap check points: Gu_MarioCircuit (2026-10-08)

Positions and properties are in private/mario_circuit_rails.csv (game data, kept local).

## Rail loader (FUN_020fbbd8, verified in the decompile)

The rail-path reader from the course data:
- Reads UnitIdNum.
- Reads RailType as a 2-byte value into the object at +0xc. This is the editor's Rail Type.
- Reads IsClosed as a flag at +0x6. This is the editor's Loop option.
- Reads PathPt, the array of points. The point count is stored at +0x4 and the points are kept at +0x18.
- For each point it creates a point object through a virtual method and reads that object's fields through another virtual.

## Bird links (three birds in the Track Studio screenshots)

| Bird | Translate | Rail Path | Lap Path | Lap point | Min/Max return point | Path speed |
|---|---|---|---|---|---|---|
| 1 | -629.117, 2989.640, 27.420 | Path 0 | Path2 | Point 67 CheckPt#9 | 4.000 / 4.000 | 0.000 |
| 2 | -657.525, 2212.406, 528.826 | Path 1 | Path1 | Point 13 | 4.000 / 5.000 | 0.000 |
| 3 | -394.994, 2303.614, 814.905 | Path 2 | Path1 | Point 12 | 4.000 / 5.000 | 0.000 |

- Each bird links to a different rail: Path 0, Path 1 and Path 2. Only Path 0's points were uploaded. Path 1 and Path 2 are unknown.
- Bird 1 starts about 40 units from the first point of Path 0.
- Path speed is 0 on all three. The editor warns that path-driven objects may need a speed above 0. The track docs say
  rail speed is often needed for object paths. So the birds may not move along their rails as set.

## Lap check point (Point 67, CheckPt#9)

- Check Point 9, Lap Check -1, Clip Index 9, Map Camera Fovy 65, Map Camera Y 320.
- The Track Studio tree shows Point 67 as the visible point in Path2. This matches the trigger you described.
- The panel in the screenshot is headed "Gravity Paths", but its fields are lap-point fields. The header may be a UI label.

## Rail structure (confirmed from the editor tree and the loader)

- The Rail Paths directory lists Path 0 to Path 13. Paths 0, 1 and 2 each have five points, Point 0 to Point 4.
- A rail is an ordered chain: Point 0 connects to Point 1, which connects to Point 2, then Point 3 and Point 4. Point 4 is
  the end. The loader reads PathPt in index order, so the chain order is the stored order.
- Loop (IsClosed) is off on Path 0, so the chain does not wrap from Point 4 back to Point 0.
- If bird 1 follows Path 0 forward, it moves from Point 0 towards Point 4. This is an inference from the chain and the bird's
  position near Point 0.

## Point-to-image mapping (now supported by the chain)

- Read in chain order, the positions of images 6, 7, 8 and 9 (taken as Points 4, 3, 2 and 1) and Image 1 (Point 0) form one
  continuous line. This supports the assumed mapping, which was based on upload order.

## Earlier notes on uncertainty (superseded)

- Image 1 is taken as Path 0 Point 0, the point nearest bird 1.
- Images 6, 7, 8 and 9 are taken as Points 4, 3, 2 and 1, by upload order. Read in that order, their positions form a
  smooth line from Point 4 to Point 0. That supports the assumption but does not prove it.
- Point scale (50, 180, 270, 350) is the transform scale, not the Param 1 or Param 2 values. The docs say the point
  parameter controls speed. Param 1 and Param 2 are 0.000 in every point screenshot.

## Open

- Path 1 and Path 2 point positions, which the uploads do not include. The editor shows both have five points.
- Paths 3 to 13 exist and are not linked to any bird in these screenshots.
- Whether Param values on the points set the speed, given that all of them are 0.000.
- The point reader (the virtual method called from the rail loader), to see which fields are read per point.


## Path 1 and Path 2 points (added 2026-10-08)

Mapped from the screenshots by the scale pattern and the chain test. Each rail's segment lengths fall between about 235
and 297 units, which supports the assignment.

- Path 1: images 9, 8, 7, 6, 5 are Points 0 to 4. Segment lengths 266, 269, 256, 297.
- Path 2: images 4, 3, 2, 1, 10 are Points 0 to 4. Segment lengths 295, 236, 265, 290.
- Path 0 (earlier): segment lengths 252, 209, 250, 275.

Each bird sits closest to its own rail's first point:
- Bird 1 is 40 units from Path 0 Point 0, and 943 from Path 1 Point 0.
- Bird 2 is 75 units from Path 1 Point 0, and 420 from Path 2 Point 0.
- Bird 3 is 24 units from Path 2 Point 0, and 338 from Path 1 Point 0.

Positions are in private/mario_circuit_rail_points.csv. The assignment is inferred from the screenshots, not from the game
data. The point format is in docs/rail_points.md.
