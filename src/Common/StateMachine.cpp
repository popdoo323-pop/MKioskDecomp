// RECONSTRUCTION, NOT MATCHED. See include/Common/StateMachine.hpp.
#include "Common/StateMachine.hpp"

void StateMachine::Update() {
    ++mFrameCount;
    if (mTransitionPending) {
        OnExit(mCurrentState);
        mPreviousState = mCurrentState;
        mCurrentState = mNextState;
        mTransitionPending = false;
        mFrameCount = 0;
        OnEnter(mCurrentState);
    }
    OnUpdate(mCurrentState);
}

void StateMachine::Reset(int state) {
    OnExit(mCurrentState);
    mPreviousState = mCurrentState;
    mCurrentState = state;
    mTransitionPending = false;
    mFrameCount = 0;
    OnEnter(mCurrentState);
}

void StateMachine::RequestTransition(int state) {
    mNextState = state;
    mTransitionPending = true;
}
