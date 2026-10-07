# Ghidra change log (Turbo.rpx project)

Date: 2026-10-07. Reference file SHA-256 `4dd6b212...409c8d` (verified identical to the Ghidra-loaded copy).

## Types created (placeholders, 1 byte each, real sizes unknown)
OSThread, OSMutex, OSCond, OSEvent, OSMessageQueue, OSMessage, OSAlarm, OSFastMutex, FSClient, FSCmdBlock

## Functions created (no function existed at the stub address)
- 0xc0009140 OSYieldThread
- 0xc0008f78 OSSetThreadPriority
- 0xc0008620 MEMGetTotalFreeSizeForExpHeap
- 0xc0008e08 OSResetEvent

## Prototypes applied (76 coreinit functions)
See `symbols/coreinit_signatures.json` for the full list. Unverified, written from memory.
Known weak spots: OSCreateThread argv type (char* makes its caller's param_1 a char*; `void *` is probably better),
FSReadFile/FSWriteFile/FSOpenFile argument lists, OSBlockMove.

## Memory block added
`.import_alias` at 0x04000000, size 0x10000, rwx. See `import_aliasing.md`.
Thunk functions created there so far: 0x04008898 OSCreateThread (test).

## Revert
Delete the `.import_alias` block, delete the created functions, or re-import the saved .gzf backup.
