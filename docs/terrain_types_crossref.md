# Terrain types: binary vs Track Studio documentation

Source for the Track Studio side: https://mapstudioproject.github.io/TrackStudioDocs/col/Collison.html (third-party docs for the
course collision `.kcl` format). Our side is the 32-entry terrain name list at 0x1014ab4c in Turbo.rpx.
Matches are by name or obvious meaning. Anything marked "guess" is not confirmed.

| Binary name | Track Studio term | Match |
|---|---|---|
| ROAD, ROAD2, ROAD3, ROAD4 | Road 1 - 4 | name |
| WALL, WALL2, WALL3 | Wall 1 - 3 | name |
| DASH | Dash | name |
| GRAVITY | Gravity Pad | name |
| GLIDE | Glider Pad | name |
| PULL | Pull | name |
| ITROAD / ITWALL | Item Road / Item Wall | name |
| SAND | Sand | name |
| LDIRT | Light Offroad | guess |
| DIRT, DIRT2 | Offroad 1 - 2 | guess |
| HDIRT | Heavy Offroad | guess |
| ICE | Slippery | guess |
| BELT | Moving Terrain | guess |
| OUTF | Fall Out | guess |
| LWALL, BWALL | LWALL, BWALL | name (docs say effect unknown) |
| TRIGGER | Effect Trigger | guess |
| SOUND | Sounds Trigger | guess |
| DUMMY2, DUMMY3 | Dummy2, Dummy3 | name |
| RESQ, DUMMY0, CANNON, VALLEY, ZONE | not listed | unknown |

## What it confirms
- Road and wall types have "8 different materials" each. This matches the 8 variants per terrain type that the ground-sound
  loader iterates (32 types x 8 variants) and the 8 columns of the sound table (`symbols/terrain_sound_table.csv`).
- The docs say mesh/material IDs can be written as `COL_##` in hex (example `COL_C` = 0x000C). The exact bit layout of that ID is not
  stated there. Our code treats terrain type as 0..31 and variant as 0..7, which fits a small packed ID but is not confirmed.
- Docs say Invisible Wall has no particles or sound: not yet mapped to a binary name.

## Not yet read
Only the Collision and Materials pages were read. The Track Studio index and the Map Objects / Sound Objects pages were not.
