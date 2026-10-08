// Host-side check that the ItemCoin reset path lands in state 0. Not part of the game build.
#include <cassert>
#include <cstdio>

#include "Game/Item/ItemCoinStates.hpp"

int main() {
    ItemCoinStates states;
    states.Reset(7);
    states.Reset(ItemCoinStates::kStateDefault);
    assert(states.CurrentState() == ItemCoinStates::kStateDefault);
    assert(states.PreviousState() == 7);
    std::printf("item coin states test: ok\n");
    return 0;
}
