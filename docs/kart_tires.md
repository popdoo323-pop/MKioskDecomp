# Kart tires and arms

Verified against the binary and the file list (2026-10-08).

## Naming, from the code

The kart part builder (FUN_023839d4) formats tire resource names as `Tire%c_%s`:
- `%c` is `K`, `B` or `T`, taken from a three-byte table {K, B, T} indexed by the vehicle class (param_3[7]): 0 = four-wheeled kart, 1 = bike, 2 = three-wheeled kart.
- `%s` is the tire abbreviation from a 19-entry table that starts with `Invalid`, read from 0x1014f508. The tire ID (param_3[6]) plus one indexes it, so tire ID 0 is `Std`.

Arm resources:
- The class-0 (four-wheeled) and class-2 (three-wheeled) paths both format `ArmK_%s`, with the tire abbreviation. The `K` is used for both classes.
- The class-1 (bike) path formats `Arm%s%c`, with a name taken from the body table and a letter S, M or L. No bike arm files were found in the file list, so this path is still unresolved.

## Coverage

- 54 tire files: 18 tire types x K, B, T. All present, none extra.
- 18 arm files: `ArmK_<abbr>.szs`, one per tire type. No ArmB or ArmT files exist.

## Corrections to the earlier notes

- The three-wheeled kart (T) uses `ArmK_*` arms, not its own arm files.

## Table

See symbols/tire_ids.csv.
