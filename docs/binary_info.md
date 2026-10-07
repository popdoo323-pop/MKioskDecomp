# Turbo.rpx binary notes

| Item | Value |
|---|---|
| File size | 6,740,928 bytes (zlib-compressed sections) |
| SHA-256 | `4dd6b2122cbb2faeb45c98e161835f36d509e9924347ccf0c1d816c421409c8d` |
| Format | Cafe OS ELF, PowerPC big-endian (Espresso) |
| Entry point | `0x02557518` |
| Build path (embedded) | `D:\home\Turbo\perforce\Turbo\project\bin\Product\Turbo.rpx` |
| Build type (embedded) | `NDEBUG` (release, stripped) |
| Section CRCs | all 41 sections match the file's CRC table |

## Memory map (decompressed)

| Section | Address | Size |
|---|---|---|
| .syscall | 0x02000000 | 8 |
| .text | 0x02000020 | 10,132,008 |
| .rodata | 0x10000000 | 1,345,144 |
| .data | 0x10148680 | 162,264 |
| .module_id | 0x10170060 | 408 |
| .bss | 0x10170200 | 619,996 |
| imports | 0xC0007540+ | 23 libraries, 652 functions |

## Verification log

- Full-file SHA-256 of the Ghidra-loaded copy equals the reference hash above.
- Ghidra 32,762 functions; only import stubs carry real names, everything else is `FUN_<addr>`.

## Companion modules

- `mvplayer.rpl` is imported by Turbo (`.fimport_mvplayer`, `.dimport_mvplayer`).
- `mw_igr.rpl` / `mw_igr_sbc.rpl` are a separate pair (`mw_igr_sbc` imports `mw_igr`).
