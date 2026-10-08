# objflow.byaml: object type table (2026-10-08)

Source: content/data/objflow.byaml, exported to XML by the maintainer. The full table (489 entries) is kept locally in
private/objflow_table.csv because it is game data.

## Structure

Each entry is one object type with these fields:
- ObjId and MgrId: the object's type ID and its manager ID. In the bird's entry both are 1039.
- Label: a display name. ResName: a list of resource names, used as the model name (for example "Bird").
- PathType, ColSize, and the arrays Item, ItemObj, Kart and KartObj: behaviour settings.
- Other flags (Clip, Lod1, Lod2, ColShape and so on): rendering and collision settings.

## Bird

- ObjId 1039, MgrId 1039, Label "Bird", ResName ["Bird"], PathType 1, ColSize X 200.
- Under the generic branch of FUN_02232a34, the model path is mapobj/<ResName>/<ResName>.bfres, which gives
  mapobj/Bird/Bird.bfres. This matches the extracted bird files.
- The bird is the only entry whose label or resource name is "Bird".

## Checks against the executable

- The special-case IDs in FUN_02232a34 agree with this table:
  - 0x3fa (1018) is Coin, with ResName Coin.
  - 0x3f5 (1013) is ItemBox, with ResName ItemBox.
  - 0x232f (9007) is ItemBoxFont, with ResName ItemBox. It loads the ItemBox model, which is why the code groups it with 1013.
- So the earlier conflict about 9007 is resolved: 9007 is ItemBoxFont, not Kuribo.

## Corrections

- The course name lists (MapObjResList and MapObjIdList in each course XML) are not aligned with the IDs. The earlier
  index pairing was wrong, including the claim that 6003 is per-course.
- ObjId 6003 is "Start" in objflow.byaml, not a bird and not a per-course value.
- objflow.byaml is the authoritative table for ID-to-name mapping.

## Still open

- How MgrId selects the class. The bird's MgrId is 1039, which is the same as its ObjId. The next step is to find where
  the manager table is read, starting from FUN_0227cfd0.
