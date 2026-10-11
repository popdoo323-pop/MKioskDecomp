// PLACEHOLDER: class, member and function names here are proposals from decompiler analysis.
// Offsets are observed, not verified against a matching build. Do not treat as final.
#pragma once
// Tire mark system. Only the resource load is located so far; generation code is not found.
// Resource: /race_common/trail/TireMark.bfres (loaded at 0x0238fbd4 and 0x021814a4, slot +0x330 of the loading object).
class TireMark {
public:
    // Candidate (not confirmed): FUN_021825cc at 0x021825cc (matched, 412 bytes) loops over the child trails, sets a
    // float at +0x1c of each child's resource to 1.0, then calls child virtual slot +0x2c with its context argument.
    // That looks like a render pass, but the update/render split is not confirmed until its caller is found.
    // Update function: not located.
    // TODO: find the caller of FUN_021825cc (its vtable slot) and confirm render vs update.
};
