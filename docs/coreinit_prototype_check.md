# coreinit prototype check against WUT

Checked 2026-10-10 against the WUT headers at commit `b98f8fc` (devkitPro/wut), the commit that matches the Ghidra
archive `wut-1.3.2-b98f8fc.gdt`. Scope: all 91 entries in `symbols/coreinit_signatures.json` (76) and
`symbols/coreinit_fs_signatures.json` (15).

Equivalent spellings are treated as the same type: `uint` = `uint32_t`, `int` = `int32_t`, `BOOL` = `int32_t`,
`const char *` = `char *`, `longlong` = `OSTime` = `int64_t`, `uchar` = `uint8_t`, handle typedefs = their underlying type.

| Result | Count |
|---|---|
| Match WUT (return type, parameter types) | 78 |
| Differ from WUT (see below) | 9 |
| C standard library, not in WUT (`memcpy`, `memmove`, `memset`, `exit`) | 4 |

## Differences to fix
| Function | Repo | WUT | Kind |
|---|---|---|---|
| MEMCreateFrmHeapEx | `ushort flags` | `uint32_t flags` | width |
| MEMDestroyFrmHeap | returns `void` | returns `void *` | return type |
| MEMGetBaseHeapHandle | `int arena` | `MEMBaseHeapType` (enum) | enum vs int |
| OSBlockSet | `int val` | `uint8_t val` | width |
| OSSendMessage | `int flags` | `OSMessageFlags` (`uint32_t`) | signedness |
| OSReceiveMessage | `int flags` | `OSMessageFlags` (`uint32_t`) | signedness |
| OSCreateThread | `ushort attr` | `OSThreadAttributes` (1 byte) | width |
| FSReadFile | `void *buffer` | `uint8_t *buffer` | pointer type |
| FSWriteFile | `void *buffer` | `uint8_t *buffer` | pointer type |

Return types of `OSSendMessage` and `OSReceiveMessage` are `int` in the repo and `BOOL` in WUT, which is the same width.

## Notes
- The four C standard library entries are not in WUT, so they cannot be checked here.
- Ghidra's applied types come from the WUT archive, so these differences are in the repo's JSON record, not necessarily
  in Ghidra. Check the Ghidra prototype before changing it.

## Applied in Ghidra (2026-10-10)
The nine differences were re-applied in Ghidra and read back to confirm. Ghidra cannot resolve WUT's `MEMHeapHandle`,
`MEMBaseHeapType`, `OSThreadEntryPointFn` and `OSMessageFlags`, so those use the same-size stand-ins listed in the
JSON notes. Storage is unchanged; the return type of `MEMDestroyFrmHeap` and the flags width of `MEMCreateFrmHeapEx`
and `OSCreateThread` now match WUT.
