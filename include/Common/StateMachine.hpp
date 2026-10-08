#pragma once
// RECONSTRUCTION, NOT MATCHED. Written by hand from the behaviour observed in ObjTire::Update, ItemCoin's state reset
// and the bird's update. The same record-table design appears in all three. Offsets are in docs/decompiled_round2.md.
// Names are placeholders.

class StateMachine {
public:
    virtual ~StateMachine() = default;

    // Advances one frame: handles a pending transition, then runs the current state's per-frame action.
    void Update();

    // Immediately switches to `state` without a pending transition (the reset path).
    void Reset(int state);

    // Requests a transition to `state` on the next Update().
    void RequestTransition(int state);

    int CurrentState() const { return mCurrentState; }
    int PreviousState() const { return mPreviousState; }
    int FrameCount() const { return mFrameCount; }

protected:
    // Per-state hooks. Subclasses decide what each state does.
    virtual void OnEnter(int state) = 0;
    virtual void OnExit(int state) = 0;
    virtual void OnUpdate(int state) = 0;

private:
    int mCurrentState = 0;
    int mPreviousState = 0;
    int mNextState = 0;
    bool mTransitionPending = false;
    int mFrameCount = 0;
};
