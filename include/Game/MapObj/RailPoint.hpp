#pragma once
// RECONSTRUCTION, NOT MATCHED. Point format from the BYAML reader and the rail builder (docs/rail_points.md).
// Field offsets in comments are the observed ones. Names are placeholders.

struct Vec3 {
    float x = 0.0f;
    float y = 0.0f;
    float z = 0.0f;
};

class RailPoint {
public:
    // Sets the rotation matrix (row-major, 9 values) from Euler angles in radians (x, y, z).
    void SetRotationFromEuler(float x, float y, float z);

    // Links this point to the next one by its base value. Sets the segment parameter to 1 / (next - base),
    // or 0 when the two values are equal.
    void LinkNext(int nextValue);

    Vec3 translate;            // +0x00
    Vec3 controlPoints[2];     // +0x0c, +0x18; default to translate when absent
    Vec3 scale;                // +0x24
    float rotation[9] = {};    // +0x30 .. +0x50
    float prm1 = 0.0f;         // +0x54, editor Param 1 (use not yet known)
    float prm2 = 0.0f;         // +0x58, editor Param 2 (use not yet known)
    int baseValue = 0;         // +0x60
    int nextValue = 0;         // +0x64
    float segmentRecip = 0.0f; // +0x68
};
