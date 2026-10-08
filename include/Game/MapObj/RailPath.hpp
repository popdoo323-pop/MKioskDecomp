#pragma once
// RECONSTRUCTION, NOT MATCHED. Rail path as built by the rail builder (docs/rail_points.md, docs/rail_birds.md).
// Names are placeholders. Behaviour is the observed linking rule; movement along the rail is not yet established.

#include <cstdint>
#include <vector>

#include "Game/MapObj/RailPoint.hpp"

class RailPath {
public:
    // Links each point to the next one (rule observed in the rail builder):
    //  - point i takes point i+1's slot value (+0x62) as its next value;
    //  - the last point takes the path-level slot value (+0x22) instead.
    // Each point's segment parameter is then 1 / (next - base).
    void LinkChain();

    // Returns the index of the segment that contains the progress value `x`, i.e. the last point whose base value
    // is <= x. Returns -1 if the path is empty or x is before the first point. HYPOTHESIS: this is how the segment
    // parameter is used; it has not been confirmed in the game code.
    int SegmentAt(int x) const;

    bool isClosed = false;        // editor Loop (IsClosed, +0x6)
    int rateType = 0;             // editor Rail Type (RailType, +0xc)
    float splitWidth = 0.0f;      // editor Obj Path Split Width (SplitWidth, +0x2c)
    uint16_t pathSlot = 0;        // path-level slot value (+0x22), used for the last point
    std::vector<uint16_t> slots;  // per-point slot value (+0x62), in chain order
    std::vector<RailPoint> points;
};
