// PLACEHOLDER: class, member and function names here are proposals from decompiler analysis.
// Offsets are observed, not verified against a matching build. Do not treat as final.
#pragma once
// Terrain type names come from the game's own 32-entry string list at 0x1014ab4c. Order verified.
enum TerrainType {
    TERRAIN_ROAD, TERRAIN_ROAD2, TERRAIN_ROAD3, TERRAIN_ROAD4, TERRAIN_SAND, TERRAIN_LDIRT, TERRAIN_DIRT, TERRAIN_DIRT2,
    TERRAIN_HDIRT, TERRAIN_ICE, TERRAIN_DASH, TERRAIN_GRAVITY, TERRAIN_GLIDE, TERRAIN_PULL, TERRAIN_BELT, TERRAIN_ITROAD,
    TERRAIN_RESQ, TERRAIN_WALL, TERRAIN_WALL2, TERRAIN_WALL3, TERRAIN_LWALL, TERRAIN_ITWALL, TERRAIN_BWALL, TERRAIN_OUTF,
    TERRAIN_DUMMY0, TERRAIN_CANNON, TERRAIN_TRIGGER, TERRAIN_SOUND, TERRAIN_VALLEY, TERRAIN_DUMMY2, TERRAIN_DUMMY3, TERRAIN_ZONE
};

// Name-to-bank table: 29 rows x 9 pointers at 0x1014ac48, see the local private/terrain_sound_table.csv (not in the repo).
const char* GroundSound_GetBankName(const unsigned* terrainType, int variant); // 0x02080d0c
void GroundSound_LoadAllBanks();                                               // 0x02392930 (32 x 8)

class GroundSoundTracker {
public:
    void UpdateTerrain();            // 0x02072608
private:
    // +0xd0  source object for terrain/variant   +0x1f1 flag byte (-1 for WBOARD/HBOARD/BONE, else -2)
    // +0x210 terrain type   +0x214 variant   +0x218 material name buffer   +0x21c string vtable   +0x220 buffer capacity
};
