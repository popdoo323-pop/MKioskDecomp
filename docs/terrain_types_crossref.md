# Terrain types: binary names vs Track Studio editor

Sources: the editor's collision attribute list (screenshots) and the Track Studio collision documentation
(https://mapstudioproject.github.io/TrackStudioDocs/col/Collison.html). Binary side: the 32-entry terrain name list in
Turbo.rpx at 0x1014ab4c, read from memory. The order is verified.

## Editor attribute to binary name

| Editor attribute | Binary name | Confidence |
|---|---|---|
| Road 1 - 4 | ROAD, ROAD2, ROAD3, ROAD4 | name |
| Wall 1 - 3 | WALL, WALL2, WALL3 | name |
| Dash | DASH | name |
| Gravity Pad | GRAVITY | name |
| Glider Pad | GLIDE | name |
| Fall Out | OUTF | name |
| Slippery | ICE | name |
| Item Road | ITROAD | name |
| Item Wall | ITWALL | name |
| Lakitu Rescue | RESQ | name |
| Zone | ZONE | name |
| Sand | SAND | name |
| Light Offroad | LDIRT | name |
| Offroad | DIRT | order match (Offroad 1) |
| Offroad 2 | DIRT2 | order match |
| Heavy Offroad | HDIRT | name |
| LWALL | LWALL | name |
| BWALL | BWALL | name |
| Pull | PULL | name |
| Moving Terrain | BELT | name |
| Effect Trigger | TRIGGER | name |
| Sound Effect | SOUND | name |
| Dummy2 / Dummy3 | DUMMY2 / DUMMY3 | name |
| Glider Activator | not in the 32-entry list | open |
| Invisible Wall | not in the 32-entry list | open |

Binary entries with no editor attribute: CANNON, VALLEY, DUMMY0.

## Material list (sound and visual variant)

| Editor material | Binary lead |
|---|---|
| Wood Board | WBOARD (the tracker sets a flag for WBOARD, HBOARD and BONE) |
| Rainbow Road (Glass Sound) | likely SNDG_GND_GLASS (ROAD2 row, variant 2); unconfirmed |
| Tec Road, Ocean Floor, Rainbow Road | not yet mapped |

The material dropdown contains several "None" entries, which look like unused slots.

## Special dropdown (probably a separate bit field stored with the attribute)

None, Trickable, Trickable (Speed Required), High Gravity, High Gravity + Trickable, High Gravity + Bouncy?

"Bouncy?" is marked with a question mark in the editor. It may relate to the tire map object's bounce; unconfirmed.
