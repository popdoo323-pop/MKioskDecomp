#pragma once
// PLACEHOLDER: class name "Bird" is taken from the asset folder; the factory link is not established.
// Offsets are observed in FUN_021fe554 and FUN_021fe6a4, not verified against a matching build.
// See docs/bird.md.

class Bird {
public:
    void SetupAnimations();   // 0x021fe554: loads GroundWaitA, GroundWaitB, Fly, Turn
    void Update();            // 0x021fe6a4: per-frame state machine

private:
    // +0x04  model handle (used by the animation lookup)
    // +0x0f5 current state (u8)      +0x0f6 previous state (u8)     +0x0f7 transition pending (u8)
    // +0x0f8 frame counter (int)     +0x100 object array            +0x104 entry table
    // +0x108 per-state table         +0x10c exit table              +0x110 next state (u8)
    // +0x114 animation handle GroundWaitA
    // +0x118 animation handle GroundWaitB
    // +0x11c animation handle Fly
    // +0x120 animation handle Turn
    // +0x122 record index (short)
    // +0x144 ushort from a record     +0x148 float, reciprocal of that value
    // +0x17c timer (short; negative = disabled)
};
