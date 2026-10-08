# Bird map object (2026-10-08)

Status: candidate class. The animation names match the bird model, but the link from the map-object factory to this class
has not been found. Names are placeholders.

## Evidence

- content/mapobj/Bird/Bird.bfres has four skeletal animations: GroundWaitA, GroundWaitB, Fly and Turn. It also has the bones
  SklRoot, Head, WingL and WingR, and the model Bird__m_BirdBody.
- FUN_021fe554 looks up exactly those four animations with FUN_02741100 and stores the handles at +0x114 (GroundWaitA),
  +0x118 (GroundWaitB), +0x11c (Fly) and +0x120 (Turn). It reads a short index at +0x122, takes a record from the list at
  this+4+0x2c, and stores a ushort at +0x144 and the reciprocal of that value as a float at +0x148.
- The same function is slot 3 (offset +0x18) of the vtable at 0x1002ec40. The other slots are methods of that class.
- FUN_021fe6a4 is that class's per-frame update. It uses the same state machine as ObjTire and ItemCoin: current state at
  +0xf5, previous at +0xf6, pending flag at +0xf7, frame counter at +0xf8, next state at +0x110, timer at +0x17c. Tables are
  at +0x104 (entry), +0x108 (per-state), +0x10c (exit), with an object array at +0x100.
- FUN_021f9bb8 builds a helper with FUN_023f9034 and stores it at +0x78.
- FUN_02393bc0 is the map-object loader. It builds mapobj/<name>/<name>.bfres and loads course_muunt.byaml or
  battle_muunt.byaml. The object name comes from the course data at runtime.

## Not established

- The factory link. The string "Bird" is not in the binary in ASCII or UTF-16, so the name must come from the course data.
  Matching the class to the name needs the course file, which is not in the upload.
- The state table contents, which live in .data and are set by the constructor.
- The class name. "Bird" is a placeholder taken from the asset folder.

## Corrections

- mpWingRate (0x100917e8) is used by FUN_023c768c, a kart wing and screw object, not by the bird. It is not evidence for the bird.

## Reference projects

The 3DWDecomp repository (github.com/shibbo/3DWDecomp) is a different game and has no stated license. Its code was not read or
used here. Our layout and naming follow docs/conventions.md.
