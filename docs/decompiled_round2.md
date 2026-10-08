# Decompiled functions, round 2 (2026-10-08)

Names are placeholders. Behaviour is read from the Ghidra decompile and is not yet matched.

## ObjTire state update (FUN_022ee4bc)

- Increments a frame counter at +0x10c each call.
- Keeps a current state in a byte at +0x109 and a next state at +0x124. A pending-transition flag is at +0x10b.
- Each state has an entry in a table of 8-byte records (short offset, short method index, two more fields). A record
  with a method index runs either a function pointer stored in the record or a virtual method of an object held
  in an array at +0x114.
- On a pending transition: run the exit action of the current state (table at +0x120), make the next state current,
  run its entry action (table at +0x118), then clear the flag and the counter.
- After that, run the per-state action from table +0x11c for the current state.
- A timer at +0x19c counts up while it is not negative. When it passes the limit at +0x19e, the next state becomes 4
  and the transition flag is set.
- Increments a value at +0x1c4 every call.

## ItemCoin state reset (FUN_0211b830)

- Runs the exit action of the current state (table at this+0x44, record index from +0x2d).
- Sets the current state to 0 (+0x2d), the previous state (+0x2e), and the flag at +0x2f to 1.
- Clears the counter at +0x30, then runs the entry action of state 0 from table at this+0x3c.
- Sets three fields at +0x16c, +0x0e8 and +0x170 to -1.
- Calls the shared thunk FUN_02119264.
- Clears +0x188 and +0x18c.
- Sets +0x174 from the virtual method at +0x17c, which is the float constant method matched as ItemCoin_Vfn_02133298.

## Shared pattern

Both functions use the same record format for state tables, and both call through an object array and a method index.
This looks like a shared state-machine base class. That is an inference from the matching code shape, not confirmed.
