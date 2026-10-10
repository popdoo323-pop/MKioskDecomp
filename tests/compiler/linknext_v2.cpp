// Compiler test for RailPoint::LinkNext, version 2 (game address 0x021090a8, 96 bytes). Not part of the game build.
// Same as version 1, but the difference is computed before nextValue is stored, following the game's order.
#include "Game/MapObj/RailPoint.hpp"

extern const float kRailZero;
extern const float kRailOne;

void RailPoint::LinkNext(int next) {
    int span = next - baseValue;
    nextValue = next;
    if (span == 0) {
        segmentRecip = kRailZero;
    } else {
        segmentRecip = kRailOne / static_cast<float>(span);
    }
}
