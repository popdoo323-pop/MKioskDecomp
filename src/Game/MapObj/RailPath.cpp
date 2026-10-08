// RECONSTRUCTION, NOT MATCHED. See include/Game/MapObj/RailPath.hpp.
#include "Game/MapObj/RailPath.hpp"

void RailPath::LinkChain() {
    const std::size_t count = points.size();
    for (std::size_t i = 0; i < count; ++i) {
        const int next = (i + 1 < count) ? static_cast<int>(slots[i + 1]) : static_cast<int>(pathSlot);
        points[i].LinkNext(next);
    }
}

int RailPath::SegmentAt(int x) const {
    int found = -1;
    for (std::size_t i = 0; i < points.size(); ++i) {
        if (points[i].baseValue <= x) {
            found = static_cast<int>(i);
        }
    }
    return found;
}
