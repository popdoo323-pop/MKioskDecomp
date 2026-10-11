# Tire mark generator (todo: Ghidra work, item 1)

Checked 2026-10-10 in Ghidra and by pattern search of the binary.

## Established
- The tire-mark loader `0x021814a4` (matched) has one caller in Ghidra: `FUN_0218153c` (the trail manager, matched,
  4240 bytes), from `0x021815ec`.
- The trail manager is one of 14 methods in a vtable at `0x1001e318` (8-byte entries: method pointer, zero pad). It is
  slot 4, at `0x1001e338`. Slot 5 is `0x021825cc`, the function we matched after the trail manager.
- So the tire-mark generator is the object that owns this vtable, and the trail manager is one of its methods.

## Not yet found
- The class name and its constructor. No code instruction builds an address in the table (checked for lis/addi, addic,
  ori and the displacement forms), no data word points at the table, and Ghidra lists no references to it.
- Likely next steps: find the constructor by its stores of the table pointer through another register pattern, or find
  the object type through the code that calls the trail manager's virtual slot.
