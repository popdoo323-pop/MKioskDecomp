#pragma once
// RECONSTRUCTION, NOT MATCHED. ItemCoin's state handling on the shared StateMachine (docs/decompiled_round2.md).
// The reset path exits the current state, sets state 0 and enters state 0. Per-state actions are placeholders.

#include "Common/StateMachine.hpp"

class ItemCoinStates : public StateMachine {
public:
    // Named states. Only the reset target (0) is established; other values are placeholders.
    static constexpr int kStateDefault = 0;

protected:
    void OnEnter(int state) override;
    void OnExit(int state) override;
    void OnUpdate(int state) override;
};
