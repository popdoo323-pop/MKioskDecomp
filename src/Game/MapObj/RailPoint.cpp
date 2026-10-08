// RECONSTRUCTION, NOT MATCHED. See include/Game/MapObj/RailPoint.hpp.
#include "Game/MapObj/RailPoint.hpp"

#include <cmath>

void RailPoint::SetRotationFromEuler(float x, float y, float z) {
    // Element order follows the stored layout. The convention is checked only by the orthonormal test below.
    const float cx = std::cos(x), sx = std::sin(x);
    const float cy = std::cos(y), sy = std::sin(y);
    const float cz = std::cos(z), sz = std::sin(z);

    rotation[0] = sy * sz;
    rotation[1] = cx * cy * sz - sx * cz;
    rotation[2] = sx * sz * cy + cx * cz;
    rotation[3] = sy * cz;
    rotation[4] = cx * cy * cz + sx * sz;
    rotation[5] = sx * cz * cy - cx * sz;
    rotation[6] = -cy;
    rotation[7] = cx * sy;
    rotation[8] = sx * sy;
}

void RailPoint::LinkNext(int next) {
    nextValue = next;
    const int span = next - baseValue;
    segmentRecip = (span == 0) ? 0.0f : 1.0f / static_cast<float>(span);
}
