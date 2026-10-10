// Compiler test for RailPoint::LinkNext, version 1 (game address 0x021090a8, 96 bytes). Not part of the game build.
// The game converts the difference with the signed-integer trick (xoris 0x8000 plus a magic double), so span is a
// signed int. The constants are extern so the linker places them at the game's addresses (0x100137c0, 0x100137c4).
#include "Game/MapObj/RailPoint.hpp"

extern const float kRailZero;
extern const float kRailOne;

void RailPoint::LinkNext(int next) {
    nextValue = next;
    int span = next - baseValue;
    if (span == 0) {
        segmentRecip = kRailZero;
    } else {
        segmentRecip = kRailOne / static_cast<float>(span);
    }
}
