// Host-side check of the shared state machine. Not part of the game build.
#include <cassert>
#include <cstdio>
#include <vector>

#include "Common/StateMachine.hpp"

class Recorder : public StateMachine {
public:
    std::vector<int> log;

protected:
    void OnEnter(int s) override { log.push_back(100 + s); }
    void OnExit(int s) override { log.push_back(200 + s); }
    void OnUpdate(int s) override { log.push_back(300 + s); }
};

int main() {
    // A pending transition: exit the old state, enter the new one, then run its update.
    Recorder r;
    r.Reset(0);                 // exit(0 default) enter(0)
    r.log.clear();
    r.RequestTransition(2);
    r.Update();
    // expected order: frame count increments, exit(0), enter(2), update(2)
    const std::vector<int> expected = {200, 102, 302};
    assert(r.log == expected);
    assert(r.CurrentState() == 2);
    assert(r.PreviousState() == 0);
    assert(r.FrameCount() == 0);   // the counter is cleared by the transition

    // Without a pending transition the frame counter counts up and only the update runs.
    r.log.clear();
    r.Update();
    assert(r.FrameCount() == 1);
    assert(r.log == std::vector<int>({302}));

    // Reset switches immediately, with exit then enter and no update.
    r.log.clear();
    r.Reset(5);
    assert(r.CurrentState() == 5);
    assert(r.PreviousState() == 2);
    assert(r.log == std::vector<int>({202, 105}));

    std::printf("state machine test: ok\n");
    return 0;
}
