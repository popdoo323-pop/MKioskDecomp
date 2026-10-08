// Host-side check of the linking rule. Not part of the game build.
#include <cassert>
#include <cstdio>

#include "Game/MapObj/RailPath.hpp"

int main() {
    RailPath path;
    path.pathSlot = 900;
    path.slots = {100, 200, 300, 400, 500};
    path.points.resize(5);
    for (auto& p : path.points) p.baseValue = 0;

    path.LinkChain();

    // point i links to slots[i+1]; the last point links to the path slot
    assert(path.points[0].nextValue == 200);
    assert(path.points[1].nextValue == 300);
    assert(path.points[2].nextValue == 400);
    assert(path.points[3].nextValue == 500);
    assert(path.points[4].nextValue == 900);

    // segment parameter is 1 / (next - base) with base 0
    assert(path.points[0].segmentRecip > 0.0f);
    assert(path.points[4].segmentRecip > 0.0f);

    // equal base and next gives a zero parameter, not a division by zero
    RailPath flat;
    flat.pathSlot = 0;
    flat.slots = {0};
    flat.points.resize(1);
    flat.LinkChain();
    assert(flat.points[0].segmentRecip == 0.0f);

    std::printf("rail path link test: ok\n");
    return 0;
}
